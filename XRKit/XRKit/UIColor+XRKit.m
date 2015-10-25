//
//  UIColor+XRKit.m
//  XRKit
//
//  Created by XU SHIYAN on 25/10/15.
//  Copyright © 2015 XU SHIYAN. All rights reserved.
//

#import "UIColor+XRKit.h"

@implementation UIColor (XRKit)

+ (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

@end
