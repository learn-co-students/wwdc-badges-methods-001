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
//getting error "initilizer element is not a compile-time constant
NSArray *speakers = @[@"Adele Goldberg.",
                      @"Edsgar Dijkstra.",
                      @"Joan Clarke.",
                      @"Clarence Ellis.",
                      @"Margaret Hamiliton.",
                      @"George Boole.",
                      @"Tim Bernes-Lee.",
                      @"Jean Bartik."];

//makeBadgesForSpeakers method
-(NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers{ //return type mutable array, accepts an array called speakers
    
    NSMutableArray *badges[8]; //define a mutable array to store the badges
    
    for(NSUInteger i = 0; i < 8; i++){ //for loop to run through the speakers array
        speaker = speakers[i]; //set speaker to speakers[i] so the makeBadgeForSpeaker method can accept each string of the array
        [self makeBadgeForSpeaker:speaker]; //called the makeBadgeForSpeaker method internally to make a badge
        [badges[i] addObject:speaker]; //add each return to the badges arrary
        NSLog(@"%@", badges[i]); //print out each line of the badges array
    
    }
    
    return badges[7]; //return the mutable array called badges
}

//greetingsAndRoomAssignments method
-(NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers{ //return type mutable array, accepts an array called speakers
    
    NSMutableArray *roomAssingments[8]; //define a mutable array to store the finished room assignments
    
    for(NSUInteger i = 0; i < 8; i++){ //for loop to run through the speakers array
        speaker = speakers[i]; //set speaker to speakers[i] so that i can append each string in the array
        NSString *welcome = @"Welcome, "; //to store the first string to be appended
        NSString *yourRoom = @"You'll be in room "; //to store the second string to be appended
        NSArray *roomNum = @[@"1.", @"2.", @"3.", @"4.", @"5.", @"6.", @"7.", @"8."]; //to store the room numbers
        
        welcome = [welcome stringByAppendingString:speaker]; //"Welcome ..."
        welcome = [welcome stringByReplacingOccurrencesOfString:@"." withString:@"!"];//Welcome ...!"
        welcome = [welcome stringByAppendingString:yourRoom];//"Welcome ...! You'll be in room "
        welcome = [welcome stringByAppendingString:roomNum[i]];//"Welcome ...! You'll be in room .."
        [roomAssingments[i] addObject: welcome]; //add the final welcome string to the mutable array
        
        NSLog(@"%@", roomAssingments[i]); //print out each line of the mutable array
        
    }
    
    return roomAssingments[7]; //return the mutable array called roomAssignments
}


@end
