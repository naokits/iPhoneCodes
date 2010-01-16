//
//  ScrollableEditViewAppDelegate.h
//  ScrollableEditView
//
//  Created by Naoki TSUTSUI on 09/12/27.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScrollableEditViewViewController;

@interface ScrollableEditViewAppDelegate : NSObject <UIApplicationDelegate> {
  UIWindow *window;
  ScrollableEditViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ScrollableEditViewViewController *viewController;

@end

