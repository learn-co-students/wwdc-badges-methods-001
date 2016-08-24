//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- (NSString*)makeBadgeForSpeaker:(NSString*)speaker {
    NSString *hello = [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
                 return hello;
}
- (NSMutableArray*)makeAllBadgesForSpeakers:(NSArray*)speakers {
    NSMutableArray *badges = [NSMutableArray array];
    for (NSUInteger i = 0; i < 8; i++) {
        NSString *hello = [NSString stringWithFormat: @"Hello, my name is %@.", speakers[i]];
        [badges addObject:hello];
    }
    return badges;
}
- (NSMutableArray*)greetAndAssignRoomsToSpeakers:(NSArray*)
    speakers {
    NSMutableArray *rooms = [NSMutableArray array];
    for (NSUInteger i = 0; i < 8; i++) {
        NSUInteger rmNo = i + 1;
        NSString *room = [NSString stringWithFormat: @"Welcome, %@! You'll be in dressing room %lu.", speakers[i], rmNo];
        [rooms addObject:room];
    }
//        @"Welcome, Adele Goldberg! You'll be in dressing room 1."
    return rooms;
}

@end
