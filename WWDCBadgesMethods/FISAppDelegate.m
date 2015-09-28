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

- (NSString *)badgeForSpeaker:(NSString *)name {
    return [NSString stringWithFormat:@"Hello, my name is %@.", name];
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSUInteger start = 0;
    NSUInteger end = [speakers count];
    NSMutableArray *greeting = [[NSMutableArray alloc] init];
    
    for (NSUInteger i=start; i < end; i++) {
        NSString *name = speakers[i];
        NSUInteger room = i+1;
        NSString *welcome = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %ld.", name, room];
        [greeting addObject:welcome];
    }
    return greeting;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers{
    NSUInteger start = 0;
    NSUInteger end = [speakers count];
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = start; i < end; i++) {
        NSString *badge = [self badgeForSpeaker:speakers[i]];
        [badges addObject:badge];
    }
    return badges;
    
}
/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
