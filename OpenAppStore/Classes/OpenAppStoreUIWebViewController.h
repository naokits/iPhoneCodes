//
//  OpenAppStoreUIWebViewController.h
//  OpenAppStore
//
//  Created by Naoki TSUTSUI on 09/12/15.
//  Copyright 2009 iphoneworld.jp. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface OpenAppStoreUIWebViewController : UIViewController <UIWebViewDelegate> {
  UIWebView* webView_;
}
@property (nonatomic, retain) IBOutlet UIWebView* webView;

@end
