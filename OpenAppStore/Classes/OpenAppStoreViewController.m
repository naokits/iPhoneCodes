//
//  OpenAppStoreViewController.m
//  OpenAppStore
//
//  Created by Naoki TSUTSUI on 09/12/15.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "OpenAppStoreViewController.h"
#import "OpenAppStoreUIWebViewController.h"

@implementation OpenAppStoreViewController
@synthesize openButton1 = openButton1_;
@synthesize openButton2 = openButton2_;
@synthesize openButton3 = openButton3_;
@synthesize webViewController = webViewController_;

// Safari経由でiTunes Storeの「アドミンくん」へジャンプする
- (IBAction)openAppStoreWithSafari1:(id)sender {
  NSString* urlString;
  urlString = @"http://phobos.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=334999327&mt=8";
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}

// Safari経由でiTune Storeの「naoki tsutsui」で検索した結果にジャンプする
// 注）検索文字列が半角スペースを含む場合はスペースを「%20」で置き換えて指定する
- (IBAction)openAppStoreWithSafari2:(id)sender {
  NSURL *url = [NSURL URLWithString:@"http://phobos.apple.com/WebObjects/MZSearch.woa/wa/search?entity=software&media=software&submit=seeAllLockups&term=naoki%20tsutsui"];
  [[UIApplication sharedApplication] openURL:url];
}

// UIWebViewで表示されたリンクからAppStoreの「アドミンくん」へジャンプする
- (IBAction)openAppStoreWithUIWeb:(id)sender {
  self.webViewController = [[[OpenAppStoreUIWebViewController alloc] 
                             initWithNibName:@"OpenAppStoreUIWebViewController" 
                             bundle:nil] autorelease];
  
  [self.view addSubview:self.webViewController.view];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
  [super viewDidLoad];
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
  [self.openButton1 release];
  [self.openButton2 release];
  [self.openButton3 release];
  [self.webViewController release];
  
  [super dealloc];
}

@end
