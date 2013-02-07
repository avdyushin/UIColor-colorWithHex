//
//  UIColor+colorWithHex.m
//
//  Created by Grigory Avdyushin (me@avdyushin.ru) on 2/7/13.
//  Copyright (c) 2013 Grigory Avdyushin. All rights reserved.
//

#import "UIColor+colorWithHex.h"

@implementation UIColor (colorWithHex)

+ (UIColor *)colorWithHex:(int)hex
{
    
    return [self colorWithHex:hex withAlpha:1.0f];
    
}

+ (UIColor *)colorWithHex:(int)hex withAlpha:(CGFloat)alpha
{
    
    CGFloat r = ((hex & 0xFF0000) >> 16) / 255.0;
    CGFloat g = ((hex & 0x00FF00) >> 8 ) / 255.0;
    CGFloat b = ((hex & 0x0000FF)      ) / 255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:alpha];
    
}

@end
