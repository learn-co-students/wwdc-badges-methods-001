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



- (NSString *) makeBadgeForSpeaker: (NSString *)speaker {
    for (NSUInteger i = 0; i < 8; i++) {
        NSString *names = [NSString stringWithFormat:@"Hello, my name is, %@", speaker];
        return names;
    }
    return 0;
}

- (NSMutableArray *) makeAllBadgesForSpeakers: (NSArray *)speakers {
    for (NSUInteger i = 0; i < 8; i++) {
        NSMutableArray *name = [NSMutableArray arrayWithObjects: @"Hello, my name is, %@", speakers, nil];
        return name;
    }
    return 0;
}
- (NSMutableArray *) greetAndAssignRoomsToSpeakers: (NSMutableArray *)speakers {
    return nil;
}

@end
