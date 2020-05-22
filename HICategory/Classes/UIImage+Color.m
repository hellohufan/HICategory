//
//  UIImage+Color.m
//  JianJian
//
//  Created by hufan on 16/5/4.
//  Copyright © 2016年 Hu Dennis. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)

- (id)color:(UIColor *)color{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [color setFill];
    CGContextTranslateCTM(context, 0, self.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGContextSetBlendMode(context, kCGBlendModeColorBurn);
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextDrawImage(context, rect, self.CGImage);
    
    CGContextSetBlendMode(context, kCGBlendModeSourceIn);
    CGContextAddRect(context, rect);
    CGContextDrawPath(context,kCGPathFill);
    UIImage *coloredImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return coloredImg;
}

- (id)theamColor{
    return [self color:[UIColor blackColor]];
}

- (id)blackColor{
    return [self color:[UIColor blackColor]];
}

- (id)whiteColor{
    return [self color:[UIColor whiteColor]];
}

- (id)grayColor{
    return [self color:[UIColor grayColor]];
}

- (id)blueColor{
    return [self color:[UIColor blueColor]];
}

- (id)lightTextColor{
    return [self color:[UIColor lightTextColor]];
}

- (id)darkBlueColor{
    return [self color:[UIColor colorWithRed:21/255. green:126/255. blue:251/255. alpha:1.]];
}

@end
