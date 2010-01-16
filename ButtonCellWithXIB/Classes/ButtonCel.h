//
//  EditableCell.h
//  EditableCell
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright 2009 iphoneworld.jp. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ButtonCel : UITableViewCell {
  UIButton *button_;
}
@property (nonatomic, retain) IBOutlet UIButton *button;

- (IBAction)showMessage:(id)sender;

@end
