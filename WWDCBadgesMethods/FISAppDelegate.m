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
    NSString *names;
    for (NSUInteger i = 0; i < 8; i++) {
        names = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];

    }
    
    return names;
}

- (NSMutableArray *) makeAllBadgesForSpeakers: (NSArray *)speakers {
    NSMutableArray *intro = [[NSMutableArray alloc] init];
    for(NSUInteger i=0;i<8;i++) {
        [intro addObject:[NSString stringWithFormat:@"Hello, my name is %@.",speakers[i]]];
        
    }
    
    return intro;
}
- (NSMutableArray *) greetAndAssignRoomsToSpeakers: (NSMutableArray *)speakers {
    NSMutableArray *fullIntro = [[NSMutableArray alloc] init];
    for(NSUInteger i=0;i<8;i++) {
        NSString *welcome = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.", speakers[i], i + 1];
        [fullIntro addObject:welcome];
    }
    
    return fullIntro;
}

@end
