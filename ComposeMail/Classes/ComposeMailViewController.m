//
//  ComposeMailViewController.m
//  ComposeMail
//
//  Created by Naoki TSUTSUI on 09/12/30.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "ComposeMailViewController.h"


@interface ComposeMailViewController (Private)
// mail送信で使用
- (void)mailAlertWithMessaeg:(NSString *)message;
- (void)displayComposerSheet;
- (void)launchMailAppOnDevice;
- (void)composeMail;
@end

@implementation ComposeMailViewController

@synthesize sendButton;

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
  [super dealloc];
}

#pragma mark -
#pragma mark IBAction

- (IBAction)send:(id)sender {
  [self composeMail];
  NSString *message = @"メールを送信します。";
  [self mailAlertWithMessaeg:message];  
}

#pragma mark -
#pragma mark Compose Mail

- (void)composeMail {
  Class mailClass = (NSClassFromString(@"MFMailComposeViewController"));
	if (mailClass != nil) {
		// We must always check whether the current device is configured for sending emails
    if ([mailClass canSendMail]) {
			[self displayComposerSheet];
		} else {
			[self launchMailAppOnDevice];
		}
	} else {
		[self launchMailAppOnDevice];
	}
}


// Displays an email composition interface inside the application. Populates all the Mail fields. 
- (void)displayComposerSheet {
  
	MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
	picker.mailComposeDelegate = self;
	
  NSString* subject = @"";
	[picker setSubject:subject];
  
	// Set up recipients
	NSArray *toRecipients = [NSArray arrayWithObject:@"kara@keiba-world.com"]; 
	// NSArray *ccRecipients = [NSArray arrayWithObjects:@"second@example.com", @"third@example.com", nil]; 
  // NSArray *bccRecipients = [NSArray arrayWithObject:@"fourth@example.com"]; 
	
	[picker setToRecipients:toRecipients];
  // [picker setCcRecipients:ccRecipients];	
  // [picker setBccRecipients:bccRecipients];
	
	// Attach an image to the email
  //	NSString *path = [[NSBundle mainBundle] pathForResource:@"rainy" ofType:@"png"];
  //  NSData *myData = [NSData dataWithContentsOfFile:path];
  //	[picker addAttachmentData:myData mimeType:@"image/png" fileName:@"rainy"];
	
	// Fill out the email body text
  //	NSString *emailBody = @"It is raining in sunny California!";
  //	[picker setMessageBody:emailBody isHTML:NO];
	
	[self presentModalViewController:picker animated:YES];
  [picker release];
}


// Dismisses the email composition interface when users tap Cancel or Send. Proceeds to update the message field with the result of the operation.
- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {	
  NSString* message;
	// Notifies users about errors associated with the interface
	switch (result)
	{
		case MFMailComposeResultCancelled:
      message = @"メール送信をキャンセルしました。";
      [self mailAlertWithMessaeg:message];
			break;
		case MFMailComposeResultSaved:
      message = @"メールを保存しました。";
      [self mailAlertWithMessaeg:message];
			break;
		case MFMailComposeResultSent:
      message = @"メールが送信されました。競馬世界よりメールが届きますのでご確認ください。";
      [self mailAlertWithMessaeg:message];
			break;
		case MFMailComposeResultFailed:
      message = @"メール送信が失敗しました。インターネット環境をご確認後、再度お送りください。";;
      [self mailAlertWithMessaeg:message];
			break;
		default:
      message = @"メールが送信されませんでした。";
      [self mailAlertWithMessaeg:message];
			break;
	}
	[self dismissModalViewControllerAnimated:YES];
}


#pragma mark -
#pragma mark Workaround

// Launches the Mail application on the device.
- (void)launchMailAppOnDevice {
	NSString *recipients = @"mailto:naoki.tsutsui@gmail.com?cc=naokits.support@gmail.com,naoki.tsutsui@gmail.com&subject=mail could not send";
	NSString *body = @"&body=mailClassがnilまたはIcanSendMailではない。";
	
	NSString *email = [NSString stringWithFormat:@"%@%@", recipients, body];
	email = [email stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:email]];
}


#pragma mark -
#pragma mark Mail Alert

/**
 ネットワーク（Wifi）が使用できない事を知らせるアラート
 */
- (void)mailAlertWithMessaeg:(NSString *)message {
  NSString* title = @"競馬ワールド";
  UIAlertView* alert = [[UIAlertView alloc] initWithTitle:title
                                                  message:message 
                                                 delegate:self 
                                        cancelButtonTitle:@"OK" 
                                        otherButtonTitles:nil];
  [alert show];
  [alert release];
}

#pragma mark -
#pragma mark Application lifecycle

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

@end
