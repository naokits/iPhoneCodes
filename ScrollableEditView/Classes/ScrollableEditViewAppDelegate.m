//
//  ScrollableEditViewAppDelegate.m
//  ScrollableEditView
//
//  Created by Naoki TSUTSUI on 09/12/27.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "ScrollableEditViewAppDelegate.h"
#import "ScrollableEditViewViewController.h"

@implementation ScrollableEditViewAppDelegate

@synthesize window;
@synthesize viewController;


- (void)dealloc {
  [viewController release];
  [window release];
  [super dealloc];
}


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
  // Override point for customization after app launch    
  [window addSubview:viewController.view];
  [window makeKeyAndVisible];
}

@end
