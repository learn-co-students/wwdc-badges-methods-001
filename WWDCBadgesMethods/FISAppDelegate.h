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

- (NSString *)makeBadgeForSpeaker:(NSString *)speaker;

- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers;

- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers;

    
    //@"Hello, my name is %@", speaker


    
  /*  for (NSUInteger i = 0; i < 8; i++) {
        (NSString) *speaker = (NSArray)speakers[i];
    }
    
    return nil
    
    //makeBadgeForSpeaker[i], speaker;

}

- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *) speakers {
    
    for (NSUInteger i = 0; i < 8; i++) {
        return nil
        
        //@"Welcome, %@! You'll be in dressing room %@.", speakers[i], i+1;
    }
    
}
   */

@end
