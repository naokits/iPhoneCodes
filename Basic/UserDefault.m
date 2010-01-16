/*
 NSUserDefaults（plist）にどのようなオブジェクトを保存できるのかを示すサンプル
*/

#import <Cocoa/Cocoa.h>

@interface UserDefaultTest : NSObject
{
}
- (void)writeToPlist;
- (void)readToPlist;
@end

@implementation UserDefaultTest
- (id)init
{
  if((self = [super init]))
  {
  }
  return self;
}

/**
 * Plistの書き込み
 */
- (void)writeToPlist {
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

  NSLog(@"NSStringの保存");
  [defaults setObject:@"NSString" forKey:@"STRING_KEY"];

  
  NSLog(@"Integerの保存");
  [defaults setInteger:999 forKey:@"INTEGER_KEY"];
  
  
  NSLog(@"NSDateの保存");
  NSDate *date = [NSDate date];
  [defaults setObject:date forKey:@"DATE_KEY"];
  

  NSLog(@"NSDataの保存");
  NSData *data = [NSData dataWithBytes:"byte data" length:10];
  [defaults setObject:data forKey:@"DATA_KEY"];


  NSLog(@"NSArrayの保存");
  NSMutableArray *array = [NSMutableArray array];
  [array addObject:@"nsstring1"];
  [array addObject:@"nsstring2"];
  [array addObject:@"nsstring3"];
  [defaults setObject:array forKey:@"ARRAY_KEY"];
  

  NSLog(@"NSDictionaryの保存");
  NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
  [dictionary setObject:@"dictionary 1" forKey:@"DIC1"];
  [dictionary setObject:date forKey:@"DIC2"];
  [defaults setObject:dictionary forKey:@"DICTIONARY_KEY"];
  
  if ( ![defaults synchronize] ) {
    NSLog( @"保存が失敗しました..." );
  }
}


/**
 *  文字列、数値の読み込み
 */
- (void)readToPlist {

  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];


  NSLog(@"--- NSStringの読み込み");
  NSString *string = [defaults stringForKey:@"STRING_KEY"];
  NSLog(@"%@", string);


  NSLog(@"--- Integerの読み込み");
  int integer = [defaults integerForKey:@"INTEGER_KEY"];
  NSLog(@"%d", integer);


  NSLog(@"--- NSDateの読み込み");
  NSDate *date = [defaults objectForKey:@"DATE_KEY"];
  NSLog(@"%@", [date description]);
  

  NSLog(@"--- NSDataの読み込み");
  NSData *data = [defaults dataForKey:@"DATA_KEY"];
  NSString *dataString;
  dataString = [[[NSString alloc] initWithData:data 
                                      encoding:NSUTF8StringEncoding] autorelease];
  NSLog(@"%@", dataString);  


  NSLog(@"--- NSArrayの読み込み");
  NSArray *array = [defaults arrayForKey:@"ARRAY_KEY"];
  for (NSString *object in array) {
    NSLog(@"%@", object);
  }
  
  NSLog(@"--- NSDictionaryの読み込み");
  NSDictionary *dictionary = [defaults dictionaryForKey:@"DICTIONARY_KEY"];
  for (NSString *object in dictionary) {
    NSLog(@"%@", object);
  }  
  
}


int main (int argc, char const *argv[])
{
  NSAutoreleasePool *pool = [NSAutoreleasePool new];
  
  UserDefaultTest* plist = [[UserDefaultTest alloc] init];

  [plist writeToPlist];
  NSLog(@"==========");
  [plist readToPlist];

  [plist release];
  [pool drain];
  return 0;
}


