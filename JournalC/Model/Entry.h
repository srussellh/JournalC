//
//  Entry.h
//  JournalC
//
//  Created by Bobba Kadush on 5/20/19.
//  Copyright © 2019 Bobba Kadush. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property(nonatomic, copy) NSString* title;
@property(nonatomic, copy) NSString* bodyText;
@property(nonatomic, copy) NSDate* timestamp;

- (instancetype) initWithTitle:(NSString*)title bodyText:(NSString*)bodyText;
-(void) addTitle:(NSSet *)objects;


@end

NS_ASSUME_NONNULL_END
