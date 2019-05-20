//
//  EntryDetailViewController.h
//  JournalC
//
//  Created by Bobba Kadush on 5/20/19.
//  Copyright © 2019 Bobba Kadush. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Entry;

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

@property (nonatomic,strong) Entry *entry;

-(void) updateView;

@end

NS_ASSUME_NONNULL_END
