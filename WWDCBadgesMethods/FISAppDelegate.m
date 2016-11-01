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

-(NSString *)badgeForSpeaker:(NSString *)speaker {
    NSString *myBadge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return myBadge;
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *myBadges = [[NSMutableArray alloc]init];
    
    for (NSInteger i = 0; i < [speakers count]; i++) {
        NSString *currentBadge = [self badgeForSpeaker:speakers[i]];
        [myBadges addObject:currentBadge];
    }
    
    return myBadges;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    // Welcome, <#speaker#>! You'll be in dressing room <#roomNumber#>.
    NSMutableArray *myGreetings = [[NSMutableArray alloc]init];
    
    for (NSInteger i = 0; i < [speakers count]; i++) {
        NSString *greeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %ld.", speakers[i], (i + 1)];
        
        [myGreetings addObject:greeting];
    }
    
    return myGreetings;
}

@end
