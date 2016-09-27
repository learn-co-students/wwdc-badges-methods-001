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

-(NSString *)makeBadgeForSpeaker:(NSString *)speaker{
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
};
-(NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers{
    

    
    NSMutableArray *speakersArray = [[NSMutableArray alloc]init];
    
    for (int i=0; i<8; i++) {
        NSString *speakersString = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        [speakersArray addObject:speakersString];}
        return speakersArray;
        
    };

-(NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers{
    NSMutableArray *speakersArray = [[NSMutableArray alloc]init];
    for (int i=0; i<8; i++) {
        NSString *speakersString = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %d.", speakers[i], i+1];
        [speakersArray addObject:speakersString];}
    return speakersArray;};


@end
