#import <UIKit/UIKit.h>

@interface CPUtils : NSObject

+ (NSArray *)getFilenamelistOfType:(NSString *)type fromDirPath:(NSString *)dirPath;
+(BOOL)isFileExistAtPath:(NSString*)fileFullPath;

@end

