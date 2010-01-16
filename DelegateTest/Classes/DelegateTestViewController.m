//
//  DelegateTestViewController.m
//  DelegateTest
//
//  Created by Naoki TSUTSUI on 09/12/29.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "DelegateTestViewController.h"
#import "DelegateTestAppDelegate.h"

@implementation DelegateTestViewController

@synthesize appDelegate;

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // アプリケーションデリゲートポインタを取得し、値の取得とメソッドを実行をしてみる
  appDelegate = (DelegateTestAppDelegate *)[[UIApplication sharedApplication] delegate];
  NSLog(@"%@", appDelegate.someString);
  NSLog(@"%@", [appDelegate someMessage]);

  
  // id型で受け取ってメッセージを送る書き方
  id appDelegate2 = [[UIApplication sharedApplication] delegate];
  NSLog(@"%@", objc_msgSend(appDelegate2, @selector(someMessage)));
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
  [self.appDelegate release];
  [super dealloc];
}

@end
