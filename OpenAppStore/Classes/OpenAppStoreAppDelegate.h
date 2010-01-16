//
//  OpenAppStoreAppDelegate.h
//  OpenAppStore
//
//  Created by Naoki TSUTSUI on 09/12/15.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OpenAppStoreViewController;

@interface OpenAppStoreAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    OpenAppStoreViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet OpenAppStoreViewController *viewController;

@end

