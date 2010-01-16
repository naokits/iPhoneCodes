//
//  OpenAppStoreUIWebViewController.m
//  OpenAppStore
//
//  Created by Naoki TSUTSUI on 09/12/15.
//  Copyright 2009 iphoneworld.jp. All rights reserved.
//

#import "OpenAppStoreUIWebViewController.h"


@implementation OpenAppStoreUIWebViewController
@synthesize webView = webView_;

/*
 iPhoneアプリ内からAppStoreへジャンプする方法
 注）このアプリケーションはシミュレータでは正常に動作しません。
 
 １）Safari経由でAppStoreを開く
 ２）UIWebViewからAppStoreを開く
 
 UIWebViewから直接AppStoreへのリンクを開くと、リダイレクトがループしてAppStoreのアプリを起動できない。
 そこで、遷移する前に呼び出される、UIWebViewのdelegateメッソド「shouldStartLoadWithRequest」で
 「http://itunes.apple.com/WebObjects/」で始まるURLかどうかを検査し、該当するリンクであれば
 してやるとAppStore(iTunes)が起動する。
 
 実は、shouldStartLoadWithRequestを通せばOK。
 
 */


/**
 * UIWebViewで表示されたリンクをクリックすると、遷移する前にこのメソッドが実行される
 */
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
  NSString *url;
  url = @"http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=334999327&mt=8";
  NSString* absoluteString = [[request URL] absoluteString];

  if(NSOrderedSame == [absoluteString compare:url 
                                      options:NSCaseInsensitiveSearch 
                                        range:NSMakeRange(0,[url length])]) {
    [[UIApplication sharedApplication] openURL:[request URL]];
    return YES;
  }
  
  // 最初に表示するサイト
  NSString* url2 = @"http://naokits.blogspot.com/2009/10/iphoneappstore.html";
  absoluteString = [[request URL] absoluteString];
  if(NSOrderedSame == [absoluteString compare:url2 
                                      options:NSCaseInsensitiveSearch 
                                        range:NSMakeRange(0,[url2 length])]) {
    return YES;
  }
  return NO;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
  [super viewDidLoad];

  // UIWebViewDelegateをこのオブジェクトに設定
  [self.webView setDelegate:self];
  
  NSString* urlString;
  urlString = @"http://naokits.blogspot.com/2009/10/iphoneappstore.html";
  NSURL* url = [NSURL URLWithString:urlString];
  NSURLRequest* request = [NSURLRequest requestWithURL:url];
  [self.webView loadRequest:request];
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
  [self.webView release];
  [super dealloc];
}
@end
