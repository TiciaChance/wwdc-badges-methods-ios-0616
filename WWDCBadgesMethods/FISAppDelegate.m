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

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    //makes empty array
    
    NSMutableArray *allBadges = [[NSMutableArray alloc] init];
    
    // for loop that iterate through the speakers, using the count as the #
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        // badgeForSpeaker:speakers[i] = iserts the string + the speakers which are being iterate over 
        
        NSString *currentBadge = [self badgeForSpeaker:speakers[i]];
    
        // addObject inserts a given object at the end of the array.
        
        [allBadges addObject:currentBadge];
    }
    
    return allBadges;
}

- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers; {
    return nil;
}


@end
