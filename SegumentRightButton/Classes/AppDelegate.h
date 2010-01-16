//
//  Hoge2AppDelegate.h
//  Hoge2
//
//  Created by Naoki TSUTSUI on 10/01/11.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

@interface AppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

