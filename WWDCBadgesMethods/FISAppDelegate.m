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
- (NSString *)makeBadgeForSpeaker:(NSString *)speakers {
    NSString *result = [NSString stringWithFormat:@"Hello, my name is %@." , speakers];

    return  result;
}

- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *mArray = [NSMutableArray array];
    FISAppDelegate *makeBadge = [[FISAppDelegate alloc] init];
   
    for (NSInteger i = 0; i < 8; i++) {
        NSString *badge = [makeBadge makeBadgeForSpeaker:speakers[i]];
        [mArray addObject:badge];
    }

    return mArray;
}

- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers {
    NSMutableArray *mArray = [NSMutableArray array];
    
    for (NSInteger i = 0 ; i<8; i++) {
         NSString *line = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu." , speakers[i], i+1];
        [mArray addObject:line];
    }
    
    return mArray;
}


@end
