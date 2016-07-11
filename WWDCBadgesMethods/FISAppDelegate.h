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

- (NSString *) makeBadgeForSpeaker:(NSString *)speaker;

- (NSMutableArray *) makeAllBadgesForSpeakers:(NSArray *)speakers;

- (NSMutableArray *) greetAndAssignRoomsToSpeakers:(NSArray *)speakers;

@end
