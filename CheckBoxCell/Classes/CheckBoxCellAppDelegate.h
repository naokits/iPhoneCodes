//
//  CheckBoxCellAppDelegate.h
//  CheckBoxCell
//
//  Created by Naoki TSUTSUI on 10/01/18.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

@interface CheckBoxCellAppDelegate : NSObject <UIApplicationDelegate> {
    
  UIWindow *window;
  UINavigationController *navigationController;
  NSMutableArray *checkValueArray;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (nonatomic, retain) NSMutableArray *checkValueArray;

@end

