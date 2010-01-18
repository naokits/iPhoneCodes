//
//  CheckBoxCell.h
//  CheckBoxCell
//
//  Created by Naoki TSUTSUI on 10/01/18.
//  Copyright 2010 iphoneworld.jp. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CheckBoxCell : UITableViewCell {
  UIImage *checkboxImage;
  UILabel *titleLabel;
}

@property (nonatomic, retain) IBOutlet UIImage *checkboxImage;
@property (nonatomic, retain) IBOutlet UILabel *titleLabel;

@end
