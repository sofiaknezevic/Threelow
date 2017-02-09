//
//  GameController.h
//  Threelow
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "UserInput.h"

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *dataModel;
@property (nonatomic) NSSet *controller;


- (instancetype) initArrayAndSet;

- (void)holdDie: (Dice *)dice;

- (void)roll;

@end
