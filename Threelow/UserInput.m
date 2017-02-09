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
    NSString *menu = [NSString stringWithFormat:@"\nWhat would you like to do next?\nroll - Roll the dice\nhold - Hold a certain die\nrelease - Release a die from its strangle-hold\nreset - Reset all held dice\nquit - QUIT THIS SUPER LAME GAME!"];
    
    return menu;
}

+ (NSString *) input
{
    char charArray[255];
    fgets(charArray, 255, stdin);
    
    return [[NSString stringWithCString:charArray
                               encoding:NSUTF8StringEncoding]
            stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    

}


@end
