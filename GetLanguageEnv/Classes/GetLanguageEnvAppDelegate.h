//
//  GetLanguageEnvAppDelegate.h
//  GetLanguageEnv
//
//  Created by Naoki TSUTSUI on 10/01/10.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GetLanguageEnvViewController;

@interface GetLanguageEnvAppDelegate : NSObject <UIApplicationDelegate> {
  UIWindow *window;
  GetLanguageEnvViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GetLanguageEnvViewController *viewController;

@end

