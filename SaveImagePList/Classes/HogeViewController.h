//
//  HogeViewController.h
//  Hoge
//
//  Created by Naoki TSUTSUI on 09/07/20.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HogeViewController : UIViewController {
  IBOutlet UIImageView* imageView;
  UIImage* image;
}
@property (nonatomic, retain) IBOutlet UIImageView* imageView;
@property (nonatomic, retain) UIImage* image;
@end

