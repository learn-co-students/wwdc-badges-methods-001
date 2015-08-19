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


- (NSString *) badgeForSpeaker:(NSString *)speaker{
        return [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
    }

- (NSArray *) badgesForSpeakers:(NSArray *)speakers{
    NSMutableArray *speakerBadges = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *speakerName = speakers[i];
        NSString *speakerBadge = [NSString stringWithFormat:@"Hello, my name is %@.", speakerName];
        [speakerBadges addObject:speakerBadge];
        }
    return speakerBadges;
    }

- (NSArray *) greeetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
        NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
        for (NSInteger i=0; i<[speakers count]; i++) {
                [roomAssignments addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.",speakers[i],i+1]];
            }
        return roomAssignments;
    }


@end
