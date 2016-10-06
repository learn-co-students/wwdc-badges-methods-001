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

//NSArray *speakers = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];

- (NSString *)badgeForSpeaker: (NSString *) speaker; {
    NSString *speakerbadge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];

               return speakerbadge; }

- (NSMutableArray *)badgesForSpeakers:(NSArray *) speakers; {
    NSMutableArray *mArray = [NSMutableArray array];
    FISAppDelegate *badgeMake = [[FISAppDelegate alloc]init ];
    for (NSInteger i = 0; i < 8; i++) {
        NSArray *badge = [badgeMake badgesForSpeakers:speakers [i]];
        [mArray addObject:badge];
    }
    return mArray;
}

- (NSMutableArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers; {
    NSMutableArray *mArray = [NSMutableArray array];
    
    for (NSInteger i = 0; i < 8; i++) {
        NSString *line = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1];
        [mArray addObject:line];
    }
    return mArray;

}



@end
