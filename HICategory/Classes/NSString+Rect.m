//
//  NSString+Rect.m
//  Expecta
//
//  Created by hufan on 2020/5/21.
//

#import "NSString+Rect.h"

@implementation NSString (Rect)
//自适应宽度
- (CGFloat)widthWithFont:(UIFont *)font widthMax:(NSInteger)max{
    if (self.length == 0) {
        return 10;
    }
    if (!font) {
        font = [UIFont systemFontOfSize:14];
    }
    CGSize size = [self boundingRectWithSize:CGSizeMake(40000, 21.)
                                    options:NSStringDrawingUsesLineFragmentOrigin
                                 attributes:@{NSFontAttributeName: font}
                                    context:nil].size;
    return MIN(size.width + 1, max);
}

- (CGFloat)heightWithFont:(UIFont *)font width:(CGFloat)with maxHeight:(CGFloat)max{
    if (self.length == 0 || with <= 0 || max < 20) {
        return 0;
    }
    if (!font) {
        font = [UIFont systemFontOfSize:14];
    }
    CGSize size = [self boundingRectWithSize:CGSizeMake(with, 99999999)
                                    options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                 attributes:@{NSFontAttributeName: font}
                                    context:nil].size;
    CGFloat h = size.height;
    return MIN(h, max);
}
@end
