//
//  ComposeMailAppDelegate.h
//  ComposeMail
//
//  Created by Naoki TSUTSUI on 09/12/30.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ComposeMailViewController;

@interface ComposeMailAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ComposeMailViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ComposeMailViewController *viewController;

@end

