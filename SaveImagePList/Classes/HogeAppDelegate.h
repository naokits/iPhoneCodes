//
//  HogeAppDelegate.h
//  Hoge
//
//  Created by Naoki TSUTSUI on 09/07/20.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

/*
 NSUserDefaultsを使用して、画像をplistに格納し、格納した画像データを
 取り出して表示するサンプル
*/

#import <UIKit/UIKit.h>

@class HogeViewController;

@interface HogeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HogeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HogeViewController *viewController;

@end

