//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 akuraru. All rights reserved.
//

#import "TaskService.h"
#import "CoreData+MagicalRecord.h"
#import "Task.h"
#import "TaskWrapper.h"

@implementation TaskService {

}
+ (NSFetchedResultsController *)fetchedResultController {
    return [Task MR_fetchAllGroupedBy:nil withPredicate:nil sortedBy:@"timestamp" ascending:YES];
}

+ (void)updateEntity:(TaskWrapper *)wrapper {
    Task *task = wrapper.entity ?: [Task MR_createEntity];
    [wrapper updateEntity:task];
    [task.managedObjectContext MR_saveOnlySelfAndWait];
}

+ (void)deleteEntity:(Task *)task {
    [task MR_deleteEntity];
    [task.managedObjectContext MR_saveOnlySelfAndWait];
}
@end