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


//PASSED!
- (NSString *)makeBadgeForSpeaker:(NSString *)speaker {
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return badge;
}


//PASSED!
- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i<8; i++) {
        NSString *new = speakers[i];
        NSString *badge = [self makeBadgeForSpeaker:new]; // Will this badge conflict with the  badge string above? No, It's in a different method which means they're in separate scopes.
        [badges addObject:badge];
    }
    return badges;
}


//PASSED!
- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers {
    NSMutableArray *greeting = [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i<8; i++) {
        NSString *new = speakers[i];
        NSString *greetingString = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", new, i+1];
        [greeting addObject:greetingString];
    }
    return greeting;
}



@end
