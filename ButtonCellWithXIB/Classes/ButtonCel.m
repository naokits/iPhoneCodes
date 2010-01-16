//
//  EditableCell.m
//  EditableCell
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright 2009 iphoneworld.jp. All rights reserved.
//

#import "ButtonCel.h"


@implementation ButtonCel

@synthesize button = button_;

- (void)dealloc {
  [self.button release];
  [super dealloc];
}

- (IBAction)showMessage:(id)sender {
  UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"ボタンセル" 
                                                  message:@"このようにセルにボタンを配置することもできます" 
                                                 delegate:self 
                                        cancelButtonTitle:NSLocalizedString(@"OK", nil) 
                                        otherButtonTitles:nil];
  [alert show];
  [alert release];
  
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
  NSLog(@"ほげほげ");
  if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    // Initialization code
  }
  return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
  [super setSelected:selected animated:animated];
  
  // Configure the view for the selected state
}

@end
