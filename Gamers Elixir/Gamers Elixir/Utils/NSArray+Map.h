//
//  NSArray+Map.h
//  Gamers Elixir
//
//  Created by Ed George on 03/11/2015.
//  Copyright © 2015 Ed George. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Map)

- (NSArray *)mapObjectsUsingBlock:(id (^)(id obj, NSUInteger idx))block;

@end