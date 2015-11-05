//
//  Streamer.m
//  Gamers Elixir
//
//  Created by Ed George on 04/11/2015.
//  Copyright © 2015 Ed George. All rights reserved.
//

#import "Streamer.h"

@implementation Streamer

+ (Streamer *) fromJson:(NSDictionary *)jsonResponse
{
    Streamer *streamer = [[Streamer alloc] init];
    streamer.desc = [jsonResponse objectForKey:@"description"];
    return streamer;
}

@end
