//
//  CheckBoxCell.m
//  CheckBoxCell
//
//  Created by Naoki TSUTSUI on 10/01/18.
//  Copyright 2010 iphoneworld.jp. All rights reserved.
//

#import "CheckBoxCell.h"


@implementation CheckBoxCell

@synthesize titleLabel, checkboxImage;


- (void)dealloc {
  [titleLabel release];
  [checkboxImage release];
  [super dealloc];
}


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
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
