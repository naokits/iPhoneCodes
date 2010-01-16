//
//  EditViewController.m
//  ScrollableEditView
//
//  Created by Naoki TSUTSUI on 09/12/27.
//  Copyright 2009 iphoneworld.jp. All rights reserved.
//

#import "EditViewController.h"


@implementation EditViewController

@synthesize field1;
@synthesize field2;
//@synthesize field3;
//@synthesize field4;
//@synthesize field5;

- (void)dealloc {
  [self.field1 release];
  [self.field2 release];
//  [self.field3 release];
//  [self.field4 release];
//  [self.field5 release];
  [super dealloc];
}

- (IBAction)inputField1:(id)sender {
  
}

- (IBAction)inputField2:(id)sender {
  
}
/*
- (IBAction)inputField3:(id)sender {
  
}

- (IBAction)inputField4:(id)sender {
  
}

- (IBAction)inputField5:(id)sender {
  
}
*/


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}




@end
