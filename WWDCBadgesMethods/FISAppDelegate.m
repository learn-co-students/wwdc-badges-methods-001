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
    //return @"Hello, my name is Inigo Montoya.";
    NSLog(@"Hello, my name is %@.", speaker);
    NSString *theString = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return theString;

}

- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badgeArray = [NSMutableArray array];
    
    for (NSInteger i=0; i<[speakers count]; i++) {
        NSString *theCurrentSpeaker = speakers[i];
        FISAppDelegate *whatIsThis = [[FISAppDelegate alloc] init];
        
        
        NSString *theCurrentBadge = [whatIsThis makeBadgeForSpeaker:theCurrentSpeaker];
        [badgeArray addObject:theCurrentBadge];
        
    }

    return badgeArray;
    
}

- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers {
    
    NSMutableArray *roomArray = [NSMutableArray array];
    
    for (NSInteger i = 0; i<[speakers count]; i++) {
        NSString *theCurrentSpeaker = speakers[i];
        NSString *fullBadgeString = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", theCurrentSpeaker, (i+1)];
        [roomArray addObject:fullBadgeString];
    }
    
    
    
    return roomArray;
}



/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
