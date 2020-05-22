//
//  NSString+Rect.h
//  Expecta
//
//  Created by hufan on 2020/5/21.
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Rect)
- (CGFloat)widthWithFont:(UIFont *)font widthMax:(NSInteger)max;
- (CGFloat)heightWithFont:(UIFont *)font width:(CGFloat)with maxHeight:(CGFloat)max;
@end

NS_ASSUME_NONNULL_END
