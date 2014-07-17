//
// Created by akuraru on 2014/07/17.
// Copyright (c) 2014 akuraru. All rights reserved.
//

#import "TaskWrapper.h"
#import "Task.h"

@implementation TaskWrapper {

}

- (instancetype)initWithEntity:(Task *)entity {
    self = [super init];
    if (self) {
        _entity = entity;
        self.content = entity.content;
        self.timestamp = entity.timestamp;
        [self setup];
    }
    return self;
}

- (void)setup {
    if (self.timestamp == nil) {
        self.timestamp = [NSDate date];
    }
}

- (void)updateEntity:(Task *)entity {
    entity.content = self.content;
    entity.timestamp = self.timestamp;
}
@end