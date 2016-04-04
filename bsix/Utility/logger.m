#import "logger.h"

@implementation Logger

+ (void) log: (NSString *) log
{
    NSString * dir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString * filePath = [dir stringByAppendingPathComponent:@"debug.log"];
    if (![[NSFileManager defaultManager] fileExistsAtPath: filePath]) {
        [[NSFileManager defaultManager] createFileAtPath: filePath contents: nil attributes: nil];
    }

    NSFileHandle * handle  = [NSFileHandle fileHandleForWritingAtPath: filePath];
    [handle truncateFileAtOffset:[handle seekToEndOfFile]];
    [handle writeData: [[NSString stringWithFormat:@"%@:%@\n", [NSDate date], log] dataUsingEncoding: NSUTF8StringEncoding]];
}

+ (void) log: (NSString *) log toFile: (NSString *) filePath
{
    if (![[NSFileManager defaultManager] fileExistsAtPath: filePath]) {
        [[NSFileManager defaultManager] createFileAtPath: filePath contents: nil attributes: nil];
    }

    NSFileHandle * handle  = [NSFileHandle fileHandleForWritingAtPath: filePath];
    [handle truncateFileAtOffset:[handle seekToEndOfFile]];
    [handle writeData: [log dataUsingEncoding: NSUTF8StringEncoding]];
}
@end