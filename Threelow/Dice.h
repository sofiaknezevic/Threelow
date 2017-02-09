//
//  Dice.h
//  Threelow
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) int currentValue;
@property (nonatomic, getter = isHeld) BOOL held;

- (int)randomize;

@end
