//
//  UserInput.m
//  Threelow
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

- (void) menu
{
    
}

+ (NSString *)input

{
    
    char charArray[255];
    fgets(charArray, 255, stdin);
    
    NSString *userInput = [[NSString stringWithCString:charArray
                                              encoding:NSUTF8StringEncoding]
                           stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return userInput;
    
}



@end
