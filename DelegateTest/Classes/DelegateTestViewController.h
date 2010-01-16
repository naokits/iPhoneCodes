//
//  DelegateTestViewController.h
//  DelegateTest
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DelegateTestAppDelegate;
@interface DelegateTestViewController : UIViewController {
  DelegateTestAppDelegate *appDelegate;
}
@property (nonatomic, retain) DelegateTestAppDelegate *appDelegate;

@end

