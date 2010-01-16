//
//  EditableCellAppDelegate.m
//  EditableCell
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "EditableCellAppDelegate.h"
#import "RootViewController.h"


@implementation EditableCellAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
  // Override point for customization after app launch    

	[window addSubview:[navigationController view]];
  [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

