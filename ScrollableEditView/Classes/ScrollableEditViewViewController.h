//
//  ScrollableEditViewViewController.h
//  ScrollableEditView
//
//  Created by Naoki TSUTSUI on 09/12/27.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EditViewController;

@interface ScrollableEditViewViewController : UIViewController {
  UIScrollView *scrollView;
  EditViewController *editViewController;
}

@property (nonatomic, retain) UIScrollView *scrollView;
@property (nonatomic, retain) EditViewController *editViewController;

@end

