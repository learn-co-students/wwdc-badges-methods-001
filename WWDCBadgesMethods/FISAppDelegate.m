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


- (NSString *)makeBadgeForSpeaker:(NSString *)speaker{
    
    NSString *sentence = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return sentence;
}

- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers{
    NSMutableArray *speakerList = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++){
        NSString *name = speakers[i];
        NSString *sentence = [NSString stringWithFormat:@"Hello, my name is %@.", name];
        [speakerList addObject:sentence];
    }

    return speakerList;
}


- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers{
    NSMutableArray *roomAssignment = [[NSMutableArray alloc] init];
    NSUInteger j = 1;
    for (NSUInteger i = 0;  i < [speakers count]; i++){
        NSString *name = speakers[i];
        NSString *sentence= [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", name, j];
        [roomAssignment addObject:sentence];
        j++;
    }
    return roomAssignment;
}




@end
