//
//  GetLanguageEnvViewController.m
//  GetLanguageEnv
//
//  Created by Naoki TSUTSUI on 10/01/10.
//  Copyright iphoneworld.jp 2010. All rights reserved.
//

#import "GetLanguageEnvViewController.h"

@interface GetLanguageEnvViewController (Private)
- (void)getCurrentLanguage;
@end

@implementation GetLanguageEnvViewController
@synthesize languageLabel = languageLabel_;

- (void)dealloc {
  [self.languageLabel release];
  [super dealloc];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  [self getCurrentLanguage];
}

// 現在の言語環境を取得して日本語環境かどうかを判別する
- (void)getCurrentLanguage {
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  NSArray *languages = [defaults objectForKey:@"AppleLanguages"];
  NSString *currentLanguage = [languages objectAtIndex:0];
  NSLog(@"### Current Language：%@", currentLanguage);

  if ([currentLanguage compare:@"ja"] == NSOrderedSame) {
    self.languageLabel.text = @"日本語です";    
  } else {
    self.languageLabel.text = @"日本語ではありません";    
  }
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

@end
