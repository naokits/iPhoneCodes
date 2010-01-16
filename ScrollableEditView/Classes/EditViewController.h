//
//  EditViewController.h
//  ScrollableEditView
//
//  Created by Naoki TSUTSUI on 09/12/27.
//  Copyright 2009 iphoneworld.jp. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface EditViewController : UIViewController {
  UITextField *field1;
  UITextField *field2;
//  UITextField *field3;
//  UITextField *field4;
//  UITextField *field5;
}

@property (nonatomic, retain) IBOutlet UITextField *field1;
@property (nonatomic, retain) IBOutlet UITextField *field2;
//@property (nonatomic, retain) IBOutlet UITextField *field3;
//@property (nonatomic, retain) IBOutlet UITextField *field4;
//@property (nonatomic, retain) IBOutlet UITextField *field5;

- (IBAction)inputField1:(id)sender;
- (IBAction)inputField2:(id)sender;
//- (IBAction)inputField3:(id)sender;
//- (IBAction)inputField4:(id)sender;
//- (IBAction)inputField5:(id)sender;

@end
