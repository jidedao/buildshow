//
//  HLPublicUtilTool.h
//  ShiMao
//
//  Created by heliang on 14-6-3.
//  Copyright (c) 2014年 qinhao. All rights reserved.
//

#import <Foundation/Foundation.h>
#define HLReleaseOb(ob)  {if(ob) [ob release];ob = nil;}
#define HLReleaseBlock(block) {if(block) Block_release(block);block = nil;}

@class HLRootViewController;
@interface HLPublicUtilTool : NSObject
+ (NSString *)pathWithFileName:(NSString *)fileName;
@end
