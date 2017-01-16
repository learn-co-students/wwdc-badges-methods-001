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


- (NSString *)makeBadgeForSpeaker:(NSString *)speaker{
    
    NSString *speakerBadge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return speakerBadge;
}

- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *allSpeakerBadges = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < [speakers count]; i++) {
        NSString *speakerBadge = [NSString stringWithFormat: @"Hello, my name is %@.", speakers[i]];
        [allSpeakerBadges addObject: speakerBadge];
    }
    
    return allSpeakerBadges;
}

- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers{
    
    NSMutableArray *speakersWithAssignRooms = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < [speakers count]; i++) {
        NSString *speakerAndRoom = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.", speakers[i], i+1];
        [speakersWithAssignRooms addObject:speakerAndRoom];
    }
    
    return speakersWithAssignRooms;
}
/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
