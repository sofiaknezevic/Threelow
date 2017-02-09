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
        
        _diceSymbolSet = [NSSet setWithObjects:@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅", nil];
        _diceNumberArray = [[NSMutableArray alloc] init];
        
        for(int i = 0; i<5; i++){
            Dice *dice = [[Dice alloc] init];
            [dice randomize];
            [_diceNumberArray addObject:dice];
        }
    }
    return self;
}

- (void)roll
{
    for (Dice *dice in self.diceNumberArray) {
        if (dice.held == NO) {
            [dice randomize];
        }
    }
    
    [self displayDice];
    
}

- (void)hold:(NSInteger)index
{
    [[self.diceNumberArray objectAtIndex:(index-1)] setHeld:NO];
    NSLog(@"Dice number %ld is held for you :)", index);
    
}

- (void)unHold:(NSInteger)index
{
    [[self.diceNumberArray objectAtIndex:(index-1)] setHeld:YES];
    NSLog(@"Dice number %ld has been released from the ~KRaK!EN~ for you :)", index);
    
}

- (void)reset
{
    for(Dice *dice in self.diceNumberArray){
        [dice setHeld:NO];
    }
}

- (void)score
{
    int score = 0;
    for (Dice *dice in self.diceNumberArray) {
        if (dice.currentValue != 3) {
            score += dice.currentValue;
        }
    }
    
    NSLog(@"Score: %i", score);
}

- (void)displayDice
{
    
}
@end
