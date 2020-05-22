//
//  UIView+LoadFromNib.h
//
//  Created by IVAN on 14/12/30.
//  Copyright (c) 2014年 IVAN. All rights reserved.
//
//

#import <UIKit/UIKit.h>

@interface UIView (LoadFromNib)

+ (id)loadFromNib;
+ (id)getCell:(NSString *)className nibName:(NSString *)nibName;
@end
