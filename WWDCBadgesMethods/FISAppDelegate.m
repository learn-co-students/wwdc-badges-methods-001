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
    
       NSArray *Speaker = @[ @"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"Meorge Boole", @"Tim Berners-Lee", @"Jean Bartik" ];
    
     for (NSUInteger i = 0; i < [Speaker count]; i++)  {

//badgeForSpeaker:
         NSLog(@"Hello my name is, %@!", Speaker[i] );
         
// badgesForSpeakers
         NSLog(@"Hello my name is, %@!", Speaker[i] );
         
// greetingsAndRoomAssignmentsForSpeakers:
         NSLog(@"Welcome, %@!", Speaker[i] ) NSLog(@"You'll be in dressing room, %@!", roomNumber[i] );
        


    }
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
