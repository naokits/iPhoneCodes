//
//  RootViewController.m
//  Hoge2
//
//  Created by Naoki TSUTSUI on 10/01/11.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController (Private)
- (void)segmentAction:(id)sender;
@end

@implementation RootViewController

@synthesize segmentControl = segmentControl_;

- (void)segmentAction:(id)sender {
  NSLog(@"セグメントがタップされた");
  // 押されたボタンのINDEXを取得
	int index = self.segmentControl.selectedSegmentIndex;
	
	if(index == 0) {
    NSLog(@"oneがタップされた");
	} else {
    NSLog(@"twoがタップされた");
	}
}

- (void)viewDidLoad {
  [super viewDidLoad];

  NSArray *statusItems = [[NSArray alloc] initWithObjects:@"one", @"two", nil];
  self.segmentControl = [[UISegmentedControl alloc] initWithItems:statusItems];

  
  // NSArray *toolbarItems = [[NSArray alloc] initWithObjects:self.segmentControl, nil];
  // self.toolbarItems = toolbarItems;
  // [toolbarItems release];
   
  self.segmentControl.segmentedControlStyle = UISegmentedControlStyleBar;
  self.segmentControl.selectedSegmentIndex = 0;
  [self.segmentControl addTarget:self action:@selector(segmentAction:) 
            forControlEvents:UIControlEventValueChanged];
   
  UIBarButtonItem *item;
  item = [[[UIBarButtonItem alloc] initWithCustomView:self.segmentControl] autorelease];
  self.navigationItem.rightBarButtonItem = item;
}



- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release anything that can be recreated in viewDidLoad or on demand.
	// e.g. self.myOutlet = nil;
}


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 0;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
  static NSString *CellIdentifier = @"Cell";
    
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                                   reuseIdentifier:CellIdentifier] autorelease];
  }
    
	// Configure the cell.

  return cell;
}


- (void)dealloc {
  [super dealloc];
}

@end

