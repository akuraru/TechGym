//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 akuraru. All rights reserved.
//

#import "TaskCell.h"
#import "Task.h"


@implementation TaskCell {
}

- (void)setViewObject:(Task *)task {
    self.textLabel.text = task.content;
}
@end