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
    
    NSString *temp = @"Hello, my name is ";
    temp = [temp stringByAppendingString:speaker];
    return [temp stringByAppendingString: @"."];
    
}

- (NSMutableArray *) makeAllBadgesForSpeakers:(NSArray *)speakers {
   
    NSMutableArray *result = [[NSMutableArray init] alloc];
    
    for (NSString *speaker in speakers) {
        
        NSString *badge = [self makeBadgeForSpeaker: speaker];
       [result addObject: badge];
    }
    
    return result;
    
}

- (NSMutableArray *) greetAndAssignRoomsToSpeakers:(NSArray *)speakers {
    
    NSMutableArray *result = [[NSMutableArray init] alloc];
    int count = 0;
    
    for (NSString *speaker in speakers) {
        
        NSString *first = @"Welcome, ";
        NSString *second = [first stringByAppendingString:speaker];
        NSString *next = @" You'll be in dressing room ";
        NSString *following = [second stringByAppendingString:next];
        NSString *notfinal = [following stringByAppendingString: [NSString stringWithFormat: @"%d", count]];
        
        NSString *final = [notfinal stringByAppendingString:@"."];
        [result addObject: final];
    }
    
    return result;
}

@end
