//
//  Dice.m
//  Threelow
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (int)randomize
{
    _currentValue = arc4random_uniform(6)+1;
    return _currentValue;
}

- (BOOL)held {
    return _held;
}
- (void)setHeld:(BOOL)held{
    _held = held;
}
@end
