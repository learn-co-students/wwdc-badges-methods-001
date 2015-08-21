//
//  FISAppDelegate.h
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*
 
 * Declare your custom methods in this space. Don't forget to end the statements with semicolons ";" !
 
 */


//makeBadgeForSpeaker .. that accepts one NSSTring argument named speaker and returns an NSString

-(NSString *)makeBadgeForSpeaker:(NSString *)speaker;

//makeAllBadgesForSpeakers .. that accepts one NSArray argument named speakersand returns an NSMutableArray

-(NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers;

//greetAndAssignRoomsToSpeakers .. that accepts an NSArray argument named speakers and returns an NSMutableArray

-(NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers;

@end
