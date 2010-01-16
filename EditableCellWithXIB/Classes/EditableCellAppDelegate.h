//
//  EditableCellAppDelegate.h
//  EditableCell
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

@interface EditableCellAppDelegate : NSObject <UIApplicationDelegate> {
    
  UIWindow *window;
  UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

