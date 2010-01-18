//
//  CheckBoxCellAppDelegate.m
//  CheckBoxCell
//
//  Created by Naoki TSUTSUI on 10/01/18.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

#import "CheckBoxCellAppDelegate.h"
#import "RootViewController.h"


@implementation CheckBoxCellAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize checkValueArray;


- (void)dealloc {
  [checkValueArray release];
	[navigationController release];
	[window release];
	[super dealloc];
}


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
  // Override point for customization after app launch    
//  self.checkValueArray = [NSArray arrayWithObjects:0, 0, 0];
  
  checkValueArray = [NSMutableArray arrayWithCapacity:1];
  for (int i=0; i<3; i++) {
    [checkValueArray addObject:[NSNumber numberWithInt:0]];
  }
  // retain しておかないとリリースされてしまう。
  [checkValueArray retain];
	
	[window addSubview:[navigationController view]];
  [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management


@end

