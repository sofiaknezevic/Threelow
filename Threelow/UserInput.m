//
//  UserInput.m
//  Threelow
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

- (NSString *) menu
{
    NSString *menu = [NSString stringWithFormat:@"\nWhat would you like to do?\n'roll' - Roll the dice!\n'hold' - Hold your a certain dice\n'unhold' - Release your current die\n'reset' - Reset all your held dice\n'quit' - Quit this LAME GAME"];
    
    return menu;
    
}

+ (NSString *)input

{
    
    char charArray[255];
    fgets(charArray, 255, stdin);
    
    return [[NSString stringWithCString:charArray
                                              encoding:NSUTF8StringEncoding]
                           stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
}



@end
