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



- (NSString *)badgeForSpeaker:(NSString *)speaker{
    
    speaker = @"Inigo Montoya.";
    NSString *introduction = [@"Hello, my name is " stringByAppendingString:speaker];
    
    return introduction;
}



// Not sure why I can't get these last two tests to work. I think I'm getting the correct output.


- (NSArray *)badgesForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *introSpeakersArray =[[NSMutableArray alloc]init];
    NSInteger i;
    
    for (i = 0; i <= [speakers count]; i++) {
        NSString *intro = [@"Hello, my name is " stringByAppendingString:speakers[i]];
        NSString *period = [intro stringByAppendingString:@"."];
        [introSpeakersArray addObject:period];
        NSLog(@"%@",introSpeakersArray);
    }
    
    return introSpeakersArray;
}


- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *welcomeArray = [[NSMutableArray alloc]init];
    NSString *welcomeString;
    
    NSInteger i;
    
    for (i = 0; i <=[speakers count]; i++) {
        welcomeString = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li",speakers[i],(long)i + 1];
        [welcomeArray addObject:welcomeString];
        NSLog(@"%@",welcomeArray);
    }
    return welcomeArray;
}

@end
