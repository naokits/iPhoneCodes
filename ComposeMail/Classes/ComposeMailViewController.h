//
//  ComposeMailViewController.h
//  ComposeMail
//
//  Created by Naoki TSUTSUI on 09/12/30.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>


@interface ComposeMailViewController : UIViewController <MFMailComposeViewControllerDelegate> {
  UIButton *sendButton;
}
@property (nonatomic, retain) IBOutlet UIButton *sendButton;

- (IBAction)send:(id)sender;
@end

