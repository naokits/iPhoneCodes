//
//  OpenAppStoreViewController.h
//  OpenAppStore
//
//  Created by Naoki TSUTSUI on 09/12/15.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OpenAppStoreUIWebViewController;
@interface OpenAppStoreViewController : UIViewController {
  UIButton* openButton1_;
  UIButton* openButton2_;
  UIButton* openButton3_;
  OpenAppStoreUIWebViewController* webViewController_;
}
@property (nonatomic, retain) IBOutlet UIButton* openButton1;
@property (nonatomic, retain) IBOutlet UIButton* openButton2;
@property (nonatomic, retain) IBOutlet UIButton* openButton3;
@property (nonatomic, retain) OpenAppStoreUIWebViewController* webViewController;
- (IBAction)openAppStoreWithSafari1:(id)sender;
- (IBAction)openAppStoreWithSafari2:(id)sender;
- (IBAction)openAppStoreWithUIWeb:(id)sender;
@end

