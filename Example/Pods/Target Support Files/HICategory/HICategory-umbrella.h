#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSData+Base64.h"
#import "NSData+MD5.h"
#import "NSDate+Utilities.h"
#import "NSObject+Block.h"
#import "NSString+Rect.h"
#import "UIImage+Color.h"
#import "UITextView+Placeholder.h"
#import "UIView+LoadFromNib.h"

FOUNDATION_EXPORT double HICategoryVersionNumber;
FOUNDATION_EXPORT const unsigned char HICategoryVersionString[];

