//
//  GameController.m
//  Threelow
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)initArrayAndSet
{
    self = [super init];
    if (self) {
        //⚀ ⚁ ⚂ ⚃ ⚄ ⚅
        _controller = [NSSet setWithObjects:@"I", @"II", @"III", @"IV", @"V", @"VI", nil];
        
        //create 5 dice and put them all into datamodel array
        for(int i = 0; i<5; i++){
            Dice *dice = [[Dice alloc] init];
            [_dataModel addObject:dice];
        }
    }
    return self;
}

- (void)roll
{
    
}


- (void)holdDie: (Dice *)dice
{
    
    switch ([dice randomize]) {
        case 1:
            printf("Holding Die [I]...");
            break;
        case 2:
            printf("Holding Die [II]...");
            break;
        case 3:
            printf("Holding Die [III]...");
            break;
        case 4:
            printf("Holding Die [IV]...");
            break;
        case 5:
            printf("Holding Die [V]...");
            break;
        case 6:
            printf("Holding Die [VI]...");
            break;
            
        default:
            break;
    }
 
}

@end
