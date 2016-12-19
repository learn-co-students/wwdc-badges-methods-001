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

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSString *hello = @"Hello, my name is ";
    hello = [hello stringByAppendingString:speaker];
    hello = [hello stringByAppendingString:@"."];
    
    return hello;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *mSpeakers = [speakers mutableCopy];
    for (NSUInteger i = 0; i < [mSpeakers count]; i++) {
        
        
        NSString *hello = @"Hello, my name is ";
        hello = [hello stringByAppendingString:mSpeakers[i]];
        hello = [hello stringByAppendingString:@"."];
        [mSpeakers replaceObjectAtIndex:i withObject:hello];
        
        
        /*
        Advanced Failed Attempt
         
        NSString *badge = [self badgeForSpeaker:mSpeakers[i]];
        [mSpeakers replaceObjectAtIndex:i withObject:badge];
        */
        
        /*
        Advanced Failed Attempt
         
        [self badgeForSpeaker:(NSString *)mSpeakers[i]];
        [mSpeakers replaceObjectAtIndex:i withObject:mSpeakers[i]];
        */
        
    }
                 
    return mSpeakers;
    
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *speakersRooms = [speakers mutableCopy];
    for (NSUInteger i = 0; i < [speakersRooms count]; i++) {
        
        NSUInteger roomNumber = i + 1;
        NSString *roomNumberString = [@(roomNumber) stringValue];
        
        NSString *assignments = @"Welcome, ";
        assignments = [assignments stringByAppendingString:speakersRooms[i]];
        assignments = [assignments stringByAppendingString:@"! You'll be in dressing room "];
        assignments = [assignments stringByAppendingString:roomNumberString];
        assignments = [assignments stringByAppendingString:@"."];
        
        [speakersRooms replaceObjectAtIndex:i withObject:assignments];
        
        
    }
    
    return speakersRooms;
    
    /*
     return nil;
    */
}

@end
