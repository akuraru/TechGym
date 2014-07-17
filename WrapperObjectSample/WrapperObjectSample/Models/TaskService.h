//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 akuraru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/NSFetchedResultsController.h>

@class TaskWrapper;
@class Task;

@interface TaskService : NSObject
+ (NSFetchedResultsController *)fetchedResultController;

+ (void)updateEntity:(TaskWrapper *)wrapper;

+ (void)deleteEntity:(Task *)task;
@end