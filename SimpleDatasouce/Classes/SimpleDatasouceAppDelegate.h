//
//  SimpleDatasouceAppDelegate.h
//  SimpleDatasouce
//
//  Created by Naoki TSUTSUI on 10/01/02.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

@interface SimpleDatasouceAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

