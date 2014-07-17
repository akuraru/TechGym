//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 akuraru. All rights reserved.
//

#import "InputViewController.h"
#import "TaskWrapper.h"
#import "TaskService.h"

@interface InputViewController ()
@property (weak, nonatomic) IBOutlet UITextField *contentField;

- (IBAction)actionSave:(id)sender;
@end

@implementation InputViewController {

}
- (void)viewDidLoad {
    [super viewDidLoad];

    self.contentField.text = self.wrapper.content;
}

- (IBAction)actionSave:(id)sender {
    self.wrapper.content = self.contentField.text;
    [TaskService updateEntity:self.wrapper];
    [self.navigationController popViewControllerAnimated:YES];
}
@end