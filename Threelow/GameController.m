//
//  GameController.m
//  Threelow
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "GameController.h"

@implementation GameController
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _diceSymbolSet = [NSSet setWithObjects:@"⚀", "⚁", "⚂", "⚃", "⚄", "⚅", nil];
        _diceNumberArray = [[NSMutableArray alloc] init];
        
        for(int i = 0; i<5; i++){
            Dice *dice = [[Dice alloc] init];
            [dice randomize];
            [_diceNumberArray addObject:dice];
        }
    }
    return self;
}

- (void)roll{
    
    if () {
        <#statements#>
    }
    
}

@end
