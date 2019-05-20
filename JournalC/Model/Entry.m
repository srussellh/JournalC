//
//  Entry.m
//  JournalC
//
//  Created by Bobba Kadush on 5/20/19.
//  Copyright © 2019 Bobba Kadush. All rights reserved.
//

#import "Entry.h"

@implementation Entry
- (instancetype) initWithTitle:(NSString *)title bodyText:(NSString *)bodyText{
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = [[NSDate alloc] init];
    }
    return self;
}

@end
