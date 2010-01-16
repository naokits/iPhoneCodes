//
//  ComposeMailAppDelegate.m
//  ComposeMail
//
//  Created by Naoki TSUTSUI on 09/12/30.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "ComposeMailAppDelegate.h"
#import "ComposeMailViewController.h"

@implementation ComposeMailAppDelegate

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
