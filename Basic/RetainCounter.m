#import <Cocoa/Cocoa.h>

@interface RetainCounter : NSObject
{
  NSString *str_;
}
@property (nonatomic, retain) NSString *str;
@end

@implementation RetainCounter
@synthesize str = str_;

- (id)init {
  if((self = [super init])) {
  }
  return self;
}
@end

int main (int argc, char const *argv[])
{
  NSAutoreleasePool *pool = [NSAutoreleasePool new];

  RetainCounter *counter = [RetainCounter new];

  [counter retain];
  [counter release];
  NSLog(@"retainCount:%d", [counter retainCount]); // should be 1
  
  [pool drain];
  return 0;
}