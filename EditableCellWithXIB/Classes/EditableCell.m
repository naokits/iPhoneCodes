//
//  EditableCell.m
//  EditableCell
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright 2009 iphoneworld.jp. All rights reserved.
//

#import "EditableCell.h"


@implementation EditableCell
@synthesize textField;

- (void)dealloc {
  [self.textField release];
  [super dealloc];
}

// 新規ファイルで、UITableViewCell Subclass テンプレートから、EditableCell クラスを追加。
// EditableCellクラスにUITextFieldクラスのインスタンス変数を追加。
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
  if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    // Initialization code
  }
  return self;
}

//- (void)layoutSubviews {
  // CGRectInset : 中央を固定し、オフセットでdx,dyを指定する
  // この場合もとのサイズよりも小さくなる
//  textField.frame = CGRectInset(self.contentView.bounds, 20, 0);
//}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {

  [super setSelected:selected animated:animated];

  // Configure the view for the selected state
}

@end
