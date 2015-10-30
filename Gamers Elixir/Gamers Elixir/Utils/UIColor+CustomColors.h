//
//  UIColor+CustomColors.h
//  Gamers Elixir
//
//  Created by Ed George on 30/10/2015.
//  Copyright © 2015 Ed George. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (CustomColors)

+ (UIColor *) GE_Yellow;
+ (UIColor *) GE_Light_Yellow;
+ (UIColor *) GE_Dark_Yellow;
+ (UIColor *) GE_Accent;
+ (UIColor *) GE_Twitch;
+ (UIColor *) GE_Light_Grey;
+ (UIColor *) GE_Background;


+ (UIColor *) colorFromHexString:(NSString *) hexString;

@end
