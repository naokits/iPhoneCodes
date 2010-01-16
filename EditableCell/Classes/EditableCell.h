//
//  EditableCell.h
//  EditableCell
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright 2009 iphoneworld.jp. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface EditableCell : UITableViewCell {
  UITextField *textField;
}
@property (nonatomic, retain) UITextField *textField;
@end
