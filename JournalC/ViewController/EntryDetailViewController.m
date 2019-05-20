//
//  EntryDetailViewController.m
//  JournalC
//
//  Created by Bobba Kadush on 5/20/19.
//  Copyright © 2019 Bobba Kadush. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"
#import "Entry.h"

@interface EntryDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextLabel;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.updateView;
}

- (IBAction)saveButtonTapped:(id)sender {
    if ([self.titleLabel.text  isEqual: @""]){return;}
    if ([self.bodyTextLabel.text isEqual:@""]){return;}
    if(self.entry){
        [[EntryController shared]updateEntry:self.entry withTitle:self.titleLabel.text andBodyText:self.bodyTextLabel.text];
    }else{
    
    [[EntryController shared] createNewEntryWithTitle:self.titleLabel.text andBodyText:self.bodyTextLabel.text];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)clearButtonTapped:(id)sender {
    self.titleLabel.text = @"";
    self.bodyTextLabel.text = @"";
    
}

-(void) updateView
{
    self.titleLabel.text = [self.entry title];
    self.bodyTextLabel.text = [self.entry bodyText];
}

@end
