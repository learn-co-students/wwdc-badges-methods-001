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


-(NSString *) makeBadgeForSpeaker:(NSString *)speaker{
    return [@"Hello, my name is" stringByAppendingFormat:@" %@.",speaker];
}
-(NSMutableArray *) makeAllBadgesForSpeakers:(NSArray *)speakers{
    NSMutableArray * theSpeakers= [[NSMutableArray alloc]init];
    
    for(NSUInteger i=0; i <8; i++){
        [theSpeakers addObject: [@"Hello, my name is" stringByAppendingFormat:@" %@.",speakers[i]]];
    }

    return theSpeakers;
}
-(NSMutableArray *) greetAndAssignRoomsToSpeakers:(NSArray *)speakers{
    NSMutableArray * theSpeakers= [[NSMutableArray alloc]init];
    
    for(NSUInteger i=0; i <8; i++){
        [theSpeakers addObject: [[@"Welcome," stringByAppendingFormat:@" %@!",speakers[i]] stringByAppendingFormat:@" You'll be in dressing room %li.", i+1 ]];
    }
    
    return theSpeakers;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
