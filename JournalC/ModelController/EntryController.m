//
//  EntryController.m
//  JournalC
//
//  Created by Bobba Kadush on 5/20/19.
//  Copyright © 2019 Bobba Kadush. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@interface EntryController()
@property (nonatomic, strong, readwrite) NSMutableArray* internalEntries;

@end

@implementation EntryController


+(EntryController*) shared;
{
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalEntries = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)entries
{
    return self.internalEntries;
}
- (void)createNewEntryWithTitle:(NSString *)title andBodyText:(NSString *)bodyText
{
    Entry *newEntry = [[Entry alloc] initWithTitle:title bodyText:bodyText];
    [self.internalEntries addObject:newEntry];
}

- (void)removeEntry:(Entry *)entry
{
    
}

-(void) updateEntry:(Entry *)entry withTitle:(NSString *)title andBodyText:(NSString *)bodyText
{
    entry.bodyText = bodyText;
    entry.title = title;
}
@end
