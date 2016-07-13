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

- (NSString *)makeBadgeForSpeaker:(NSString *)speaker
{
    NSString (*badge);
    badge =  [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return badge;
}

- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers
{
    NSString *greeting;
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [speakers count]; i++)
    {
        greeting = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        [badges addObject:greeting];
    }
    return badges;
}

- (NSMutableArray*) greetAndAssignRoomsToSpeakers: (NSArray*) speakers
{
    NSString *welcome;
    NSMutableArray *assign = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [speakers count]; i++)
    {
        welcome = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %d.", speakers[i], (i + 1)];
        [assign addObject:welcome];
    }
    return assign;
}


@end
