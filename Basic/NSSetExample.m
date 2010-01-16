#import <Cocoa/Cocoa.h>

@interface NSSetExample : NSObject {
}

- (void)example1;
@end

@implementation NSSetExample

- (id)init
{
  if((self = [super init]))
  {
  }
  return self;
}

- (void)example1 {
  NSLog(@"*** example1 ***");
  NSSet *set = [NSSet setWithObjects: @"aaa" , @"bbb" , @"ccc" , nil ];
  NSSet *set2 = [NSSet setWithObjects: @"aaa" , @"ccc" , @"bbb" , nil ];
  
  NSLog([[set allObjects] description]);
  for (NSString *i in set) {
    NSLog(@"%@", [i description]);
    if ([i isEqualToString:@"bbb"]) {
      NSLog(@"%@と一致", i);
    }
  }
  
  if  ([set2 isEqualToSet:set]) {
    NSLog( @"YES" );
  } else {
    NSLog( @"NO" );
  }
}

@end

int main (int argc, char const *argv[])
{
  NSAutoreleasePool *pool = [NSAutoreleasePool new];
  
  NSSetExample *ex;
  ex = [[NSSetExample alloc] init];
  [ex example1];
  
  [pool drain];
  return 0;
}