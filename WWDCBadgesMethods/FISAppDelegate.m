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

- (NSString *)makeBadgeForSpeaker:(NSString *)speaker {
    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}

- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badges = [NSMutableArray arrayWithCapacity:[speakers count]];
    for (int i=0; i<[speakers count]; i++){
        badges[i] = [self makeBadgeForSpeaker:speakers[i]];
    }
    
    return badges;
}


- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetings = [NSMutableArray arrayWithCapacity:[speakers count]];
    for (int i=0; i<[speakers count]; i++){
        greetings[i] = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %d.", speakers[i], i+1];
    }
    
    return greetings;
}


@end
