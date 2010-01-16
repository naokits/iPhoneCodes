//
//  ProximitySensAppDelegate.m
//  ProximitySens
//
//  Created by Naoki TSUTSUI on 09/12/03.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "ProximitySensAppDelegate.h"
#import "ProximitySensViewController.h"

@implementation ProximitySensAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
  // 近接センサーを有効にする
  [UIDevice currentDevice].proximityMonitoringEnabled = YES;
  // 近接センサーの状態変化を受け取るメソッドを指定する
  [[NSNotificationCenter defaultCenter] addObserver:self 
                                           selector:@selector(stateByProximitySens) 
                                               name:UIDeviceProximityStateDidChangeNotification 
                                             object:nil];
  

  // Override point for customization after app launch    
  [window addSubview:viewController.view];
  [window makeKeyAndVisible];
}

/**
 * 近接センサーの状態が変化したときに呼ばれる。
 * 近接センサーに顔や指を近づけると、画面がブラックアウトし、ロックされる。
 * 近づいた時：YES (1)
 * 離れた時：NO (0)
 * 備考：近接センサーは受話口の左横にあり、オンからオフに切り替わった時に数秒点灯する
 */
-(void)stateByProximitySens;
{
  BOOL status = [UIDevice currentDevice].proximityState;
  NSLog(@"近接センサーの状態: %d", status);
}

- (void)dealloc {
  [viewController release];
  [window release];
  [super dealloc];
}

@end
