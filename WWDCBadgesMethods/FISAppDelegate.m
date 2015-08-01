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
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
    
}


-(NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badges = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < 8; i++) {
        
        badges[i] = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        
    }
    
    return badges;
    
}

- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers {
    
    NSMutableArray *roomAssignments = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < 8; i++) {
        
        roomAssignments[i] = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1];
    }
    
    return roomAssignments;
    
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
