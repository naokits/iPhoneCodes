//
//  GetLanguageEnvAppDelegate.m
//  GetLanguageEnv
//
//  Created by Naoki TSUTSUI on 10/01/10.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

#import "GetLanguageEnvAppDelegate.h"
#import "GetLanguageEnvViewController.h"

@implementation GetLanguageEnvAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
  // Override point for customization after app launch    
  [window addSubview:viewController.view];
  [window makeKeyAndVisible];
}


- (void)dealloc {
  [viewController release];
  [window release];
  [super dealloc];
}


@end
