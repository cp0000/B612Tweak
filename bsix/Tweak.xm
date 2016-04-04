#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "Utility/logger.h"
#import "Utility/CPUtils.h"

#import "Bsix/GLProgram.h"
#import "Bsix/GPUImageFilter.h"


%hook GLProgram

-(id)initWithVertexShaderFilename:(id)vertexShaderFilename fragmentShaderFilename:(id)filename
{
    [Logger log: [NSString stringWithFormat:@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd)]];
    NSString * msg = [NSString stringWithFormat: @"vertexShaderFilename: %@ filename: %@ ", vertexShaderFilename, filename];
    [Logger log: msg];
    return %orig;
}
-(id)initWithVertexShaderString:(id)vertexShaderString fragmentShaderFilename:(id)filename
{
    [Logger log: [NSString stringWithFormat:@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd)]];
    NSString * msg = [NSString stringWithFormat: @"vertexShaderString: %@ filename: %@ ", vertexShaderString, filename];
    [Logger log: msg];
    return %orig;
}
-(id)initWithVertexShaderString:(id)vertexShaderString fragmentShaderString:(id)string
{
    [Logger log: [NSString stringWithFormat:@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd)]];
    NSString * msg = [NSString stringWithFormat: @"vertexShaderString: %@ fragmentShaderString: %@ ", vertexShaderString, string];
    [Logger log: msg];
    return %orig;
}

%end
    
    
%hook GPUImageFilter

-(id)init
{
    [Logger log: [NSString stringWithFormat:@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd)]];
    return %orig;
}
-(id)initWithFragmentShaderFromFile:(id)file{
    [Logger log: [NSString stringWithFormat:@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd)]];
    return %orig;
}
-(id)initWithFragmentShaderFromString:(id)string
{
    [Logger log: [NSString stringWithFormat:@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd)]];
    return %orig;
}
-(id)initWithVertexShaderFromString:(id)string fragmentShaderFromString:(id)string2
{
    [Logger log: [NSString stringWithFormat:@"%@ %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd)]];
    NSString * msg = [NSString stringWithFormat: @"vertexShaderFromString: %@ fragmentShaderFromString: %@ ", string, string2];
    [Logger log: msg];
    return %orig;
}
%end

