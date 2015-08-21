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
    [self makeBadgeForSpeaker:@"Inego Montoya"]; //for first test through makeBadgeForSpeaker
    //defined my speakers aray in application:didFinishLaunchWithOptions so both methods can call it
    NSArray *speakers = [NSArray arrayWithObjects:
                         @"Adele Goldberg",
                         @"Edsgar Dijkstra",
                         @"Joan Clarke",
                         @"Clarence Ellis",
                         @"Margaret Hamiliton",
                         @"George Boole",
                         @"Tim Bernes-Lee",
                         @"Jean Bartik", nil];
    
    NSLog(@"Test 1 Output: %@",
    
    [self makeAllBadgesForSpeakers:speakers]);
    
    [self greetAndAssignRoomsToSpeakers:speakers];
    
    return YES;
}
          

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */



//makeBadgeForSpeaker method
-(NSString *)makeBadgeForSpeaker:(NSString *)speaker{ //return type string, accepts a string argument called speaker
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker]; //formatted with stringWithFormat method
    return badge; //return the badge
}

//makeBadgesForSpeakers method
-(NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers{ //return type mutable array, accepts an array called speakers
    NSMutableArray *badges = [[NSMutableArray alloc] init]; //define an empty badges array to return
    NSString *speaker; //speaker string
    for(NSUInteger i = 0; i < 8; i++){ //for loop to run through the speakers array
        speaker = speakers[i]; //set speaker to speakers[i] so the makeBadgeForSpeaker method can accept each string of the array
        [badges addObject:[self makeBadgeForSpeaker:speaker]]; //add object to array from make badges array in one line
        
    }
    
    return badges; //return the mutable array called badges
}

//greetingsAndRoomAssignments method
-(NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers{ //return type mutable array, accepts an array called speakers
    NSMutableArray *roomAssingments = [[NSMutableArray alloc] init]; //define a mutable array to store the finished room assignments
    for(NSUInteger i = 0; i < 8; i++){
        //format a single string to print out message
        NSString *welcomeAndRoomNum = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %u.", speakers[i], i+1];
        [roomAssingments addObject:welcomeAndRoomNum]; //add string to roomAssignments array
    }
    
    return roomAssingments; //return the mutable array called roomAssignments
    
    
}


@end
