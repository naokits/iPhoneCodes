//
//  DelegateTestAppDelegate.h
//  DelegateTest
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DelegateTestViewController;

@interface DelegateTestAppDelegate : NSObject <UIApplicationDelegate> {
  UIWindow *window;
  DelegateTestViewController *viewController;
  NSString *someString;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DelegateTestViewController *viewController;
@property (nonatomic, retain) NSString *someString;

- (NSString *)someMessage;

@end

