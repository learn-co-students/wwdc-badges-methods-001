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

- (NSString *) makeBadgeForSpeaker:(NSString *)speaker {
    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}

- (NSMutableArray *) makeAllBadgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *mSpeakers = [[NSMutableArray alloc]init];
    FISAppDelegate *speakerBadge = [[FISAppDelegate alloc]init];
    for (NSUInteger i = 0; i < 8; i++) {
        NSString *badge = [speakerBadge makeBadgeForSpeaker:speakers[i]];
        [mSpeakers addObject:badge];
    }
    return mSpeakers;
}

- (NSMutableArray *) greetAndAssignRoomsToSpeakers:(NSArray *)speakers {
    NSMutableArray *welcome = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < 8; i++) {
        NSString *assignment = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1];
        [welcome addObject:assignment];
    }
    return welcome;
}




@end
