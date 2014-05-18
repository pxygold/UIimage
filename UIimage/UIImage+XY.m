//
//  UIImage+XY.m
//
//
//  Created by apple on 14-5-5.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import "UIImage+XY.h"

@implementation UIImage (XY)
+ (UIImage *)imageWithName:(NSString *)name
{
    if (iOS7) {
        NSString *newName = [name stringByAppendingString:@"_os7"];
        UIImage *image = [UIImage imageNamed:newName];
        if(image == nil){//,没有iso7的后最
            image = [UIImage imageNamed:name];
        }
        return image;
    }
    //not ios7
    return [UIImage imageNamed:name];
}
//拉伸
+ (UIImage *)resizedImageWithName:(NSString *)name
{
    UIImage *image = [self imageWithName:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width*0.5 topCapHeight:image.size.height*0.5];
}
+ (UIImage *)resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top
{
    UIImage *image = [self imageWithName:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width * left topCapHeight:image.size.height * top];
}

@end
