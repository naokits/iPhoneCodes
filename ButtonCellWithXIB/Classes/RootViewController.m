//
//  RootViewController.m
//  EditableCell
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "RootViewController.h"
#import "ButtonCel.h"

@implementation RootViewController


- (void)viewDidLoad {
  [super viewDidLoad];
  // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
}

/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}

/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

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
  return 1;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *CellIdentifier = @"ButtonCell";

  ButtonCel *cell;
  cell = (ButtonCel *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:@"ButtonCell"
                                                        owner:nil options:nil];
    for (id currentObject in nibObjects) {
      if ([currentObject isKindOfClass:[ButtonCel class]]) {
        cell = (ButtonCel *)currentObject;
      }
    }
  }
  
  cell.selectionStyle = UITableViewCellSelectionStyleNone;

  //  cell.textLabel.text に値を入れてはいけない。
  
  return cell;
}


- (void)dealloc {
  [super dealloc];
}


@end

