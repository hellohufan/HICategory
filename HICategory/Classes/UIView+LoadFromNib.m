 //
//  UIView+LoadFromNib.m
//
//  Created by IVAN on 14/12/30.
//  Copyright (c) 2014年 IVAN. All rights reserved.
//

#import "UIView+LoadFromNib.h"

@implementation UIView (LoadFromNib)

+ (id)loadFromNib{
    id view = nil;
    NSString *sClassName = NSStringFromClass([self class]);
    NSArray *ar = [[NSBundle mainBundle] loadNibNamed:sClassName owner:self options:nil];
    if ([ar count] > 0) {
        view = ar[0];
    }
    return view;
}

+ (id)getCell:(NSString *)className nibName:(NSString *)nibName{
    Class moduleClass = NSClassFromString(className);
    UITableViewCell *cell = nil;
    NSArray *objects = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil];
    for (NSObject *obj in objects) {
        if ([obj isKindOfClass:moduleClass]) {
            cell = (UITableViewCell *)obj;
            break;
        }
    }
    return cell;
}
@end
