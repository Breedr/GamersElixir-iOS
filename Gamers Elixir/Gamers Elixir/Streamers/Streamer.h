//
//  Streamer.h
//  Gamers Elixir
//
//  Created by Ed George on 04/11/2015.
//  Copyright © 2015 Ed George. All rights reserved.
//
// "channel": {
//     "name": "joe5029",
//     "description": "Hey there, I am a super cheerful guy streaming your favorite games ! press that follow and come along for some fun next time   'm live! :D",
//     "title": "BO3 GIVEAWAY MADNESS!! | Follow To Win! |!songrequest | !emotes| !vips | @gamerselixir #twitch #gamers #games",
//     "meta_game": "Call of Duty: Black Ops III",
//     "display_name": "Joe5029",
//     "link": "http://twitch.tv/joe5029",
//     "image": {
//         "size600": "http://static-cdn.jtvnw.net/jtv_user_pictures/joe5029-profile_image-f7e8c0abe033eee8-600x600.png",
//         "size300": "http://static-cdn.jtvnw.net/jtv_user_pictures/joe5029-profile_image-f7e8c0abe033eee8-300x300.png",
//         "size150": "http://static-cdn.jtvnw.net/jtv_user_pictures/joe5029-profile_image-f7e8c0abe033eee8-150x150.png",
//         "size70": "http://static-cdn.jtvnw.net/jtv_user_pictures/joe5029-profile_image-f7e8c0abe033eee8-70x70.png",
//         "size50": "http://static-cdn.jtvnw.net/jtv_user_pictures/joe5029-profile_image-f7e8c0abe033eee8-50x50.png",
//         "size28": "http://static-cdn.jtvnw.net/jtv_user_pictures/joe5029-profile_image-f7e8c0abe033eee8-28x28.png"
//     },
//     "status": "live",
//     "followers_count": 4941,
//     "total_views": 65121,
//     "current_viewers": 7
// }

#import <Foundation/Foundation.h>

@interface Streamer : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *meta_game;
@property (nonatomic, strong) NSString *display_name;
@property (nonatomic, strong) NSString *link;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) NSString *followers;
@property (nonatomic, strong) NSString *current_views;

+ (Streamer *) fromJson:(NSDictionary *)jsonResponse;

@end
