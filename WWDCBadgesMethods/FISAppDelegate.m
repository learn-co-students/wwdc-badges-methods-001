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
    
    
    
    NSMutableArray *makeAllBadgesForSpeakers = [[NSMutableArray alloc]init];
    
    NSMutableArray *greetAndAssignRoomsToSpeakers = [[NSMutableArray alloc]init];
    
    NSString *speaker = @"Hello, my name is Inigo Montoya.";
    
    NSString *makeBadgeForSpeaker = speaker;
    
    NSLog(@"%@", makeBadgeForSpeaker);
    
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
