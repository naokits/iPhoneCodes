//
//  HogeAppDelegate.m
//  Hoge
//
//  Created by Naoki TSUTSUI on 09/07/20.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "HogeAppDelegate.h"
#import "HogeViewController.h"

@implementation HogeAppDelegate

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
