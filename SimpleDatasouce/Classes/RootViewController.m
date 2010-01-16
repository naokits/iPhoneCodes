//
//  RootViewController.m
//  SimpleDatasouce
//
//  Created by Naoki TSUTSUI on 10/01/02.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController
@synthesize simpleDatasouce;


- (void)viewDidLoad {
  [super viewDidLoad];

  // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
  // self.navigationItem.rightBarButtonItem = self.editButtonItem;
  
  simpleDatasouce = [[NSArray alloc] 
                     initWithObjects:@"項目１",
                     @"項目２", 
                     @"項目３", 
                     nil];
  
  // データソースの追加はもちろん別途必要
  self.navigationItem.rightBarButtonItem = [self editButtonItem];
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
  return [simpleDatasouce count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
  static NSString *CellIdentifier = @"Cell";
    
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
  }
    
	// Configure the cell.
  cell.textLabel.text = [simpleDatasouce objectAtIndex:indexPath.row];

  return cell;
}

// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}

- (void)dealloc {
  [super dealloc];
}


@end

