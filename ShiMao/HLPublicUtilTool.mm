//
//  HLPublicUtilTool.mm
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import "HLPublicUtilTool.h"

@implementation HLPublicUtilTool
+ (NSString *)pathWithFileName:(NSString *)fileName
{
    if (fileName == nil)
    {
        return nil;
    }
    //首先去document下找
    NSArray *array1=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path=[array1 objectAtIndex:0];
    
    NSString *pathString=[NSString stringWithFormat:@"%@/%@",path,fileName];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:pathString])
    {
        return pathString;
    }
    pathString = [NSString stringWithFormat:@"%@/%@",[[NSBundle mainBundle] resourcePath],fileName];
    if ([[NSFileManager defaultManager] fileExistsAtPath:pathString])
    {
        return pathString;
    }
//    
//    pathString = fileName;
//    
//    if ([[NSFileManager defaultManager] fileExistsAtPath:pathString])
//    {
//        return pathString;
//    }
    return nil;
}
+(NSString*)ResourceFilePath:(NSString*)filename
{
    //对传来的文件名字符串处理下，只取最后文件名
    NSString *fileName = [filename lastPathComponent];    
	return [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] resourcePath], fileName];
}
+ (UIImage *)imageNamed:(NSString *)name
{
    UIImage *image = [[[UIImage alloc]initWithContentsOfFile:[self pathWithFileName:name]] autorelease];
    return image;
}
@end
