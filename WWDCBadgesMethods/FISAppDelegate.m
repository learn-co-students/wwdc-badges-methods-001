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
        NSString *names = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
        return names;
    }
    return 0;
}

- (NSMutableArray *) makeAllBadgesForSpeakers: (NSArray *)speakers {
    NSMutableArray *intro = [[NSMutableArray alloc] init];
    for(NSUInteger i=0;i<8;i++) {
        [intro addObject:[NSString stringWithFormat:@"Hello, my name is %@., ",speakers[i]]];
    return intro;
    }
    return 0;
}
- (NSMutableArray *) greetAndAssignRoomsToSpeakers: (NSMutableArray *)speakers {
    NSMutableArray *fullIntro = [[NSMutableArray alloc] init];
    for(NSUInteger i=0;i<8;i++) {
        NSString *welcome = [NSString stringWithFormat:@"Welcome, %@!", speakers];
        NSString *dressingRoom = [NSString stringWithFormat:@"You'll be in dressing room number %li.", i];
        NSString *fullWelcome = [welcome stringByAppendingString:dressingRoom];
        [fullIntro addObject:fullWelcome];
        return fullIntro;
            }
    return 0;
}

@end
