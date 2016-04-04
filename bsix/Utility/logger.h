#import <Foundation/Foundation.h>

@interface Logger:NSObject
+ (void) log: (NSString *) log;
+ (void) log: (NSString *) log toFile: (NSString *) filePath;
@end