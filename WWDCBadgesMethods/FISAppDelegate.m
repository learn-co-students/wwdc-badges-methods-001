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

-(NSString*) badgeForSpeaker:(NSString*)speaker
{
//Mistake was making the return string a regular NSString, obviously want to add to the string therefore must be NSMUTABLE STRING, DON'T FORGET!!
    NSMutableString *fullGreeting = [[NSMutableString alloc]init];
    
    [fullGreeting appendString:@"Hello, my name is "];
    [fullGreeting appendString:speaker];
    [fullGreeting appendString:@"."]; 
    NSLog(@"%@", fullGreeting); 
    
    return fullGreeting;
}
-(NSArray*) badgesForSpeakers:(NSArray*)speakers
{
    NSMutableArray *completeGreetings = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [speakers count]; i++)
    {
        NSString *greetingMessage = [NSString stringWithFormat:@"Hello, my name is %@.",speakers[i]];
        
        [completeGreetings addObject:greetingMessage]; 
    }
    return completeGreetings;
}
-(NSArray*) greetingsAndRoomAssignmentsForSpeakers:(NSArray*)speakers
{
    NSMutableArray *roomAndGreeting = [[NSMutableArray alloc]init];
    for(NSUInteger i = 0; i < [speakers count]; i++)
    {
        NSUInteger roomCount = i + 1;
        NSString *greetingMessage = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.",speakers[i], roomCount];
        [roomAndGreeting addObject:greetingMessage]; 
    }
    
    return roomAndGreeting;
}

@end
