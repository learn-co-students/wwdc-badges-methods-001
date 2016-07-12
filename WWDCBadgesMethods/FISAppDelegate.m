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

//* Define your methods between application:didFinishLaunchingWithOptions and the @end marker


-(NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers{
    
    NSMutableArray * theSpeakers=[[NSMutableArray alloc] init];
    
    for( int i=0; i<[speakers count]; i++){
        
        [theSpeakers addObject: [NSString stringWithFormat:@"%@",[self makeBadgeForSpeaker:speakers[i]]]];
    }
    
    return theSpeakers;
}

-(NSString *)makeBadgeForSpeaker:(NSString *)speaker{
    
    return  [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
}

-(NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers{
    
    NSMutableArray * theStringArray=[[NSMutableArray alloc] init];
    
    
    
    
    for(int i=0; i<[speakers count]; i++){
        
        [theStringArray addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %i.", speakers[i], i+1]];
    }
    
    return theStringArray;
}

@end
