//
//  ProximitySensAppDelegate.h
//  ProximitySens
//
//  Created by Naoki TSUTSUI on 09/12/03.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ProximitySensViewController;

@interface ProximitySensAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ProximitySensViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ProximitySensViewController *viewController;

@end

