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
    
    NSArray *speakers = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */


- (NSString *) makeBadgeForSpeaker:(NSString *)speaker{
    return [NSString stringWithFormat: @"Hello, my name is %@.",speaker];
}

- (NSMutableArray *) makeAllBadgesForSpeakers:(NSArray *)speakers{
    NSMutableArray *greetingBadges = [[NSMutableArray alloc] init];
    for (NSInteger i=0; i<[speakers count]; i++) {
        //[greetingBadges addObject:[NSString stringWithFormat:@"Hello, my name is %@.",speakers[i]]];
        [greetingBadges addObject: [self makeBadgeForSpeaker:speakers[i]]];
    }
    return greetingBadges;
}

- (NSMutableArray *) greetAndAssignRoomsToSpeakers:(NSArray *)speakers{
    NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
    for (NSInteger i=0; i<[speakers count]; i++) {
        [roomAssignments addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.",speakers[i],i+1]];
    }
    return roomAssignments;
}

@end
