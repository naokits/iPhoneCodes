//
//  DelegateTestAppDelegate.m
//  DelegateTest
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "DelegateTestAppDelegate.h"
#import "DelegateTestViewController.h"

@implementation DelegateTestAppDelegate

@synthesize window;
@synthesize viewController;
@synthesize someString;

- (NSString *)someMessage {
  return @"This is message.";
}


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
  // Override point for customization after app launch    
  self.someString = @"This is some string";
  
  [window addSubview:viewController.view];
  [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
