//
//  OpenAppStoreAppDelegate.m
//  OpenAppStore
//
//  Created by Naoki TSUTSUI on 09/12/15.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "OpenAppStoreAppDelegate.h"
#import "OpenAppStoreViewController.h"

@implementation OpenAppStoreAppDelegate

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
