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
//variable for test #1 that prints out "Hello, my name is Inigo Montoya."

NSString *speaker = @"Inigo Montoya.";
//makeBadgeForSpeaker method
-(NSString *)makeBadgeForSpeaker:(NSString *)speaker{ //return type string, accepts a string argument called speaker
   
    NSString *greeting = @"Hello, my name is "; //to append to the speaker variable
    NSString *badge = [greeting stringByAppendingString: speaker]; //appending the speaker variable to the greeting
   
    NSLog(@"%@", badge); //print out badge aka "Hello, my name is ..."
    
    return badge; //return the badge
}
//speakers array
//getting error "initilizer element is not a compile-time constant"
//gave up and moved it inside of the individual methods
//in googling it I read I apparently need to move the array into an initilizer .. not sure how to do that..?


//makeBadgesForSpeakers method
-(NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers{ //return type mutable array, accepts an array called speakers
    speakers = @[@"Adele Goldberg",
                 @"Edsger Dijkstra",
                 @"Joan Clarke",
                 @"Clarence Ellis",
                 @"Margaret Hamilton",
                 @"George Boole",
                 @"Tim Bernes-Lee",
                 @"Jean Bartik"];
    NSMutableArray *badges = [[NSMutableArray alloc] initWithCapacity:8];//define a mutable array to store the badges
   
        for(NSUInteger i = 0; i < 8; i++){ //for loop to run through the speakers array
        speaker = speakers[i]; //set speaker to speakers[i] so the makeBadgeForSpeaker method can accept each string of the array
        [badges addObject:[self makeBadgeForSpeaker:speaker]]; //add object to array from make badges array in one line
        NSLog(@"%@", badges[i]); //print out each line of the badges array
    
    }
    
    return badges; //return the mutable array called badges
}

//greetingsAndRoomAssignments method
-(NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers{ //return type mutable array, accepts an array called speakers
    speakers = @[@"Adele Goldberg",
                 @"Edsger Dijkstra",
                 @"Joan Clarke",
                 @"Clarence Ellis",
                 @"Margaret Hamilton",
                 @"George Boole",
                 @"Tim Bernes-Lee",
                 @"Jean Bartik"];
    NSMutableArray *roomAssingments = [[NSMutableArray alloc] initWithCapacity:8]; //define a mutable array to store the finished room assignments
    NSArray *roomNum = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8"]; //to store the room numbers
    for(NSUInteger i = 0; i < 8; i++){ //for loop to run through the speakers array
        speaker = speakers[i];
        NSString *yourRoom = [NSString stringWithFormat: @"Welcome %@! You'll be in room %@.", roomNum[i], speaker];//format and add strings
        [roomAssingments[i] addObject: yourRoom]; //add the final welcome string to the mutable array
        NSLog(@"%@", roomAssingments[i]); //print out each line of the mutable array
        
    }
    
    return roomAssingments; //return the mutable array called roomAssignments
    
    
}


@end
