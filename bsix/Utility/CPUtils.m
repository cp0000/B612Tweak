/*
  CPUtils.m
*/

#import "CPUtils.h"

@implementation CPUtils

+ (NSArray *)getFilenamelistOfType:(NSString *)type fromDirPath:(NSString *)dirPath
{  
    NSMutableArray *filenamelist = [NSMutableArray arrayWithCapacity:10];  
    NSArray *tmplist = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:dirPath error:nil];  

    for (NSString *filename in tmplist) {  
        NSString *fullpath = [dirPath stringByAppendingPathComponent:filename];  
        if ([self isFileExistAtPath:fullpath]) {  
            if ([[filename pathExtension] isEqualToString:type]) {  
                [filenamelist  addObject:filename];  
            }
        }
    }
    return filenamelist;  
}

+(BOOL)isFileExistAtPath:(NSString*)fileFullPath
{  
    BOOL isExist = NO;  
    isExist = [[NSFileManager defaultManager] fileExistsAtPath:fileFullPath];  
    return isExist;  
}

@end
