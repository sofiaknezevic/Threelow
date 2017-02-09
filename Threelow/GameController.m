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
        
        for(int i = 0; i<5; i++){
            Dice *dice = [[Dice alloc] init];
            [_datamodel addObject:dice];
        }
     
        
    }
    return self;
}


- (void)holdDie: (Dice *)dice{
 
}

@end
