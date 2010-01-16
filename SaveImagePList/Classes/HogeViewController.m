//
//  HogeViewController.m
//  Hoge
//
//  Created by Naoki TSUTSUI on 09/07/20.
//  Copyright iphoneworld.jp 2009. All rights reserved.
//

#import "HogeViewController.h"

@interface HogeViewController()
- (void)readImageFromPlist;
- (void)setImageToPlist;
- (void)loginPlist;
@end

@implementation HogeViewController
@synthesize imageView, image;

- (void)dealloc {
  [imageView release];
  [image release];
  [super dealloc];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
  [super viewDidLoad];
  
  [self setImageToPlist];
  [self readImageFromPlist];
  
//  [self loginPlist];
  [imageView setImage:self.image];
}

- (void)loginPlist {
  NSUserDefaults* plist = [NSUserDefaults standardUserDefaults];
  NSString* login = @"naokits";
  NSString* password = @"hogehoge";
  [plist setObject:login forKey:@"login"];
  [plist setObject:password forKey:@"password"];
  
  if ( ![plist synchronize] ) {
    NSLog( @"failed ..." );
  }
  
  // read login info from plist
  login = [plist stringForKey:@"login"];
  NSLog(@"login is %@", login);
}

- (void)setImageToPlist {
  UIImage* myImage = [[UIImage imageNamed:@"176998.jpg"] retain];
  if (myImage == nil) {
    NSLog(@"ファイルが存在しない");
    return;
  }
  
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  
  // NSDataの保存
  NSString *path = [[[NSBundle mainBundle] bundlePath] 
                    stringByAppendingPathComponent:@"176998.jpg"];
  NSData* data = [NSData dataWithContentsOfFile:path];
  if ([data bytes] == 0) {
    NSLog(@"ファイルが存在しない:%@", path);
    return;
  }
  [defaults setObject:data forKey:@"IMAGE_DATA"];
  if ( ![defaults synchronize] ) {
    NSLog( @"failed ..." );
  }
}

- (void)readImageFromPlist {
  NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
  // NSDataのの中の画像を読み込んで表示
  NSData* data;
  data = [defaults dataForKey:@"IMAGE_DATA"];
  self.image = [[UIImage alloc] initWithData:data];
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
