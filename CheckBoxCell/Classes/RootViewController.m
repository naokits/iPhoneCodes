//
//  RootViewController.m
//  CheckBoxCell
//
//  Created by Naoki TSUTSUI on 10/01/18.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

#import "RootViewController.h"
#import "CheckBoxCell.h"
#import "DymmyViewController.h"
#import "CheckBoxCellAppDelegate.h"

@implementation RootViewController

@synthesize dataSourceArray = dataSourceArray_;
@synthesize checkboxCel;
@synthesize dummyController;


- (void)dealloc {
  [self.dataSourceArray release];
  [super dealloc];
}


- (void)viewDidLoad {
  [super viewDidLoad];

  // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
  // self.navigationItem.rightBarButtonItem = self.editButtonItem;
  
  self.dataSourceArray = [NSMutableArray arrayWithCapacity:1];
  [self.dataSourceArray addObject:@"タイトル１"];
  [self.dataSourceArray addObject:@"タイトル２"];
  [self.dataSourceArray addObject:@"タイトル３"];
}


- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  
  [self.tableView reloadData];

}


/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
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
  return [self.dataSourceArray count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
  static NSString *CellIdentifier = @"Cell";
  
  // カスタムセルを使用する
  CheckBoxCell *cell;
  cell = (CheckBoxCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                                   reuseIdentifier:CellIdentifier] autorelease];
    
    NSArray* nibObjects = [[NSBundle mainBundle] loadNibNamed:@"CheckBoxCell" 
                                                        owner:self options:nil];
    for (id currentObject in nibObjects) {
      if ([currentObject isKindOfClass:[CheckBoxCell class]]) {
        cell = (CheckBoxCell *)currentObject;
      }
    }
  }
    
	// Configure the cell.

  cell.titleLabel.text = [self.dataSourceArray objectAtIndex:indexPath.row];

  // チェックボックスの表示
  NSBundle* mainBundle=[NSBundle mainBundle];
  NSString* path;
  NSNumber *value;

  CheckBoxCellAppDelegate *appDelegate;
  appDelegate = (CheckBoxCellAppDelegate *)[[UIApplication sharedApplication] delegate];
  value = [appDelegate.checkValueArray objectAtIndex:indexPath.row];

  if ([value intValue]  == 0) {
    path = [mainBundle pathForResource:@"1" ofType:@"gif"];
  } else {
    path = [mainBundle pathForResource:@"2" ofType:@"gif"];
  }
  cell.checkboxImage = [[[UIImage alloc] initWithContentsOfFile:path] autorelease];
  [cell.imageView setImage:cell.checkboxImage];

  return cell;
}


// Override to support row selection in the table view.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  CheckBoxCellAppDelegate *appDelegate;
  appDelegate = (CheckBoxCellAppDelegate *)[[UIApplication sharedApplication] delegate];
  NSNumber *value;
  value = [appDelegate.checkValueArray objectAtIndex:indexPath.row];
  
  NSNumber *number;
  if ([value intValue] == 0) {
    number = [NSNumber numberWithInt:1];
    [number retain];
  } else {
    number = [NSNumber numberWithInt:0];
  }
  [appDelegate.checkValueArray replaceObjectAtIndex:indexPath.row withObject:number];

  // すぐに前画面に戻る
  DymmyViewController *controller = [[DymmyViewController alloc] 
                                     initWithNibName:@"DymmyViewController" bundle:nil];
	[self.navigationController pushViewController:controller animated:NO];
	[controller release];
}

@end

