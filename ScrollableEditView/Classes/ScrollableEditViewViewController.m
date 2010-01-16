//
//  ScrollableEditViewViewController.m
//  ScrollableEditView
//
//  Created by Naoki TSUTSUI on 09/12/27.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "ScrollableEditViewViewController.h"
#import "EditViewController.h"

@interface ScrollableEditViewViewController (Private)
- (void)keyboardWasShown:(NSNotification*)aNotification;
- (void)keyboardWasHidden:(NSNotification*)aNotification;
@end

@implementation ScrollableEditViewViewController

@synthesize scrollView;
@synthesize editViewController;

BOOL keyboardShown;

- (void)dealloc {
  [self.scrollView release];
  [self.editViewController release];
  [super dealloc];
}


// View Controllerセットアップコードのどこかでこのメソッドを呼び出す 
- (void)registerForKeyboardNotifications { 
  [[NSNotificationCenter defaultCenter]addObserver:self 
                                          selector:@selector(keyboardWasShown:) 
                                              name:UIKeyboardDidShowNotification 
                                            object:nil]; 
  
  [[NSNotificationCenter defaultCenter]addObserver:self 
                                          selector:@selector(keyboardWasHidden:) 
                                              name:UIKeyboardDidHideNotification 
                                            object:nil]; 
}


// UIKeyboardDidShowNotificationが送信されたときに呼び出される 
- (void)keyboardWasShown:(NSNotification*)aNotification { 
  if(keyboardShown) 
      return;
  
  NSLog(@"キーボードが現れた");
  NSDictionary *info = [aNotification userInfo]; 

  // キーボードのサイズを取得する 
  NSValue* aValue = [info objectForKey:UIKeyboardBoundsUserInfoKey]; 
  CGSize keyboardSize = [aValue CGRectValue].size; 
  
  // Scroll View（このウインドウのルートビュー）をサイズ変更する 
//  NSLog(@"### keyboard height: %f", keyboardSize.height);
  CGRect nkviewFrame = [self.editViewController.view frame];
//  NSLog(@"### view height:%f", nkviewFrame.size.height);
  nkviewFrame.size.height += keyboardSize.height;
//  NSLog(@"### view resize:%f", nkviewFrame.size.height);
  [scrollView setContentSize:nkviewFrame.size];
  
  // アクティブなText Fieldが表示されるようにスクロールする 
  keyboardShown = YES;
}

// UIKeyboardDidHideNotificationが送信されたときに呼び出される 
- (void)keyboardWasHidden:(NSNotification*)aNotification {
  NSLog(@"キーボードが隠れた");
  // NSDictionary* info = [aNotification userInfo];
  
  // Scroll Viewの高さを元の値に戻す 
  CGRect editViewFrame = [self.editViewController.view frame];
  editViewFrame.size.height = 460.0;
  [scrollView setContentSize:editViewFrame.size];

  keyboardShown = NO; 
} 


/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
  [super loadView];

  [self registerForKeyboardNotifications];
  
	scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
	[self.view addSubview:scrollView];
  
  self.editViewController = [[EditViewController alloc] 
                             initWithNibName:@"EditViewController" bundle:nil];
  [self.view addSubview:editViewController.view];
  [self.scrollView addSubview:self.editViewController.view];
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
  [super viewDidLoad];

  [self registerForKeyboardNotifications];

	scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
	[self.view addSubview:scrollView];
  
  self.editViewController = [[EditViewController alloc] 
                             initWithNibName:@"EditViewController" bundle:nil];
  [self.view addSubview:editViewController.view];
  [self.scrollView addSubview:self.editViewController.view];

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
