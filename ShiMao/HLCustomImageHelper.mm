//
//  HLCustomImageHelper.mm
//  GodWorld
//
//  Created by heliang on 13-4-2.
//
//

#import "HLCustomImageHelper.h"

@implementation UIImage(HLCustomImageHelper)
+ (UIImage *)customImageNamed:(NSString *)name
{
    return [HLPublicUtilTool imageNamed:name];
}
@end
