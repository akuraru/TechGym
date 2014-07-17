//
//  ViewController.m
//  WrapperObjectSample
//
//  Created by akuraru on 2014/07/17.
//  Copyright (c) 2014年 akuraru. All rights reserved.
//



#import "ViewController.h"
#import "TableViewAgentDelegate.h"
#import "TableViewAgent.h"
#import "FRCAgentViewObject.h"
#import "TaskService.h"
#import "TaskWrapper.h"
#import "InputViewController.h"

@interface ViewController () <TableViewAgentDelegate>
@property(nonatomic, strong) TableViewAgent *agent;
- (IBAction)actionAdd:(id)sender;
- (IBAction)actionEdit:(id)sender;
@end

@implementation ViewController {
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.agent = [[TableViewAgent alloc] init];
    self.agent.viewObjects = [[FRCAgentViewObject alloc] initWithFetch:[TaskService fetchedResultController]];
    [self.agent setEditableMode:EditableModeEnable];
    self.agent.delegate = self;
}

- (NSString *)cellIdentifier:(id)viewObject {
    return @"TaskCell";
}

- (void)didSelectCell:(id)viewObject {
    [self performSegueWithIdentifier:@"Input" sender:viewObject];
}

- (void)deleteCell:(id)viewObject {
    [TaskService deleteEntity:viewObject];
}

- (IBAction)actionAdd:(id)sender {
    [self performSegueWithIdentifier:@"Input" sender:nil];
}

- (IBAction)actionEdit:(id)sender {
    self.agent.editing = !self.agent.editing;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Input"]) {
        [segue.destinationViewController setWrapper:[[TaskWrapper alloc] initWithEntity:sender]];
    }
}
@end
