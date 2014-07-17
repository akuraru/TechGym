//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 akuraru. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Task;

@interface TaskWrapper : NSObject
@property(nonatomic, retain) NSString *content;
@property(nonatomic, retain) NSDate *timestamp;

@property(readonly, strong, nonatomic) Task *entity;

- (instancetype)initWithEntity:(Task *)entity;

- (void)updateEntity:(Task *)entity;
@end