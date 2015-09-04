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
    NSString *inigo = @"Inigo Montoya";
    NSString *avenge = [NSString stringWithFormat:@"Hello, my name is %@.", inigo];
    return avenge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSArray *names = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    
    NSMutableArray *badges = [[NSMutableArray alloc]init];
    
    for (NSUInteger i=0; i < [names count]; i++) {
        NSString *message = [NSString stringWithFormat:@"Hello, my name is %@.", names[i]];
        [badges addObject:message];
    }
    return badges;
}

/*
 describe(@"greetAndAssignRoomsToSpeakers", ^{
 it(@"should return a list of welcome messages and room assignments",^{
 expect([appDelegate greetingsAndRoomAssignmentsForSpeakers:speakers]).to.equal(roomAssignments);
 
 @"Welcome, Adele Goldberg! You'll be in dressing room 1."
 */

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSArray *names = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i < [names count]; i++) {
        NSString *message = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", names[i], i+1];
        [roomAssignments addObject:message];
    }
    return roomAssignments;
}

@end
