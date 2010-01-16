#import <Foundation/Foundation.h>

// mojiretu wo hikaku suru 

@interface StringCompair : NSObject
{
}
@end

@implementation StringCompair
- (id)init
{
  if((self = [super init]))
  {
  }
  return self;
}

- (void)compare {
  // 文字列の比較テスト
  NSString* str = @"hogehoge";
  NSComparisonResult result = [str compare:@"hogehoge"];
  if (result == 0) {
    NSLog(@"%@", @"等しい");
  } else {
    NSLog(@"%@", @"異なる");
  }
}

- (void)compareWithOption {
  // 文字列の比較テスト
  NSString* str = @"hogehoge";
  NSComparisonResult result;

  // オプションを指定した場合
  result = [str compare:@"HOGEHOGE" options:NSCaseInsensitiveSearch];
  if (result == 0) {
    NSLog(@"%@", @"等しい");
  } else {
    NSLog(@"%@", @"異なる");
  }
}
@end

int main(int argc, const char* argv[])
{
  NSAutoreleasePool* pool = [NSAutoreleasePool new];

  StringCompair* obj = [[StringCompair alloc] init];
  [obj compare];
  [obj compareWithOption];

  [pool drain];
  return 0;
}


