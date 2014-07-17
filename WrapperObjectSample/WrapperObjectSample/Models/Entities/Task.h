//
//  Task.h
//  WrapperObjectSample
//
//  Created by akuraru on 2014/07/17.
//  Copyright (c) 2014年 akuraru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Task : NSManagedObject

@property (nonatomic, retain) NSString * content;
@property (nonatomic, retain) NSDate * timestamp;

@end
