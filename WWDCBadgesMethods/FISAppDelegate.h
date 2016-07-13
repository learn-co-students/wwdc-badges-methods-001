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

- (NSString *) makeBadgeForSpeaker: (NSString*)speakers;

- (NSMutableArray*) makeAllBadgesForSpeakers: (NSArray*)speakers;

- (NSMutableArray*) greetAndAssignRoomsToSpeakers: (NSArray*) speakers;


@end


//ReturnType *captureVariable = [recipientObject methodNameArgument:argumentVariable];
// - (NSString *)deliverSodaForSelection:(NSUInteger)selection withPaymentInCents:(NSUInteger)paymentInCents;