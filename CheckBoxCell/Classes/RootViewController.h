//
//  RootViewController.h
//  CheckBoxCell
//
//  Created by Naoki TSUTSUI on 10/01/18.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

@class CheckBoxCell;
@class DymmyViewController;
@class CheckBoxCellAppDelegate;
@interface RootViewController : UITableViewController {
  NSMutableArray *dataSourceArray_;
  CheckBoxCell *checkboxCel;
  DymmyViewController *dummyController;
}

@property (nonatomic, retain) NSMutableArray *dataSourceArray;
@property (nonatomic, retain) CheckBoxCell *checkboxCel;
@property (nonatomic, retain) DymmyViewController *dummyController;

@end
