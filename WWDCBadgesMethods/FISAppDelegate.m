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

- (NSString *)badgeForSpeaker:(NSString *)speakers {
     NSString *output = [NSString stringWithFormat:@"Hello, my name is %@.",speakers];
    return output;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    for (NSString *talker in speakers){
        NSString *output = [self badgeForSpeaker:talker];
        [badges addObject:output];
    }
    return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *saying = [[NSMutableArray alloc] init];
    NSUInteger dressingRoomNumber= 1;
    for (NSString *talker in speakers) {
        NSString *output = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.",talker, dressingRoomNumber++];
        [saying addObject:output];
    }
    return saying;
}

@end
