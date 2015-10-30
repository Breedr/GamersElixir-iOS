//
//  UIColor+CustomColors.m
//  Gamers Elixir
//
//  Created by Ed George on 30/10/2015.
//  Copyright © 2015 Ed George. All rights reserved.
//

#import "UIColor+CustomColors.h"

@implementation UIColor (CustomColors)

+ (UIColor *) GE_Yellow{
    return [self colorFromHexString:@"#FFC107"];
}

+ (UIColor *) GE_Light_Yellow{
    return [self colorFromHexString:@"#FFECB3"];
}

+ (UIColor *) GE_Dark_Yellow{
    return [self colorFromHexString:@"#FFA000"];
}

+ (UIColor *) GE_Accent{
    return [self colorFromHexString:@"#448AFF"];
}

+ (UIColor *) GE_Twitch{
    return [self colorFromHexString:@"#6441A5"];
}

+ (UIColor *) GE_Light_Grey{
    return [self colorFromHexString:@"#CECECE"];
}

+ (UIColor *) GE_Background{
    return [self colorFromHexString:@"#303030"];
}

+ (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}


@end
