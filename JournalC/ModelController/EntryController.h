//
//  EntryController.h
//  JournalC
//
//  Created by Bobba Kadush on 5/20/19.
//  Copyright © 2019 Bobba Kadush. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

@property (nonatomic, strong, readonly) NSArray* entries;

+ (EntryController *) shared;

-(void) createNewEntryWithTitle:(NSString*)title andBodyText:(NSString*)bodyText;
-(void) removeEntry:(Entry *)entry;
-(void) updateEntry:(Entry*)entry withTitle:(NSString*)title andBodyText:(NSString*)bodyText;


@end

NS_ASSUME_NONNULL_END
