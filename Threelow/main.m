//
//  main.m
//  Threelow
//
//  Created by Sofia Knezevic on 2017-02-08.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "UserInput.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

      
        
        BOOL gameOn = TRUE;
        
        //Dice *gameDice = [[Dice alloc] init];
        
        GameController *rollDice = [[GameController alloc] init];
        
        UserInput *menuGame = [[UserInput alloc] init];
        
        while (gameOn) {
            
            NSLog(@"%@",[menuGame menu]);
            
            NSString *select;
            
            NSString *willYouPlay = [UserInput input];
        
            if([willYouPlay isEqualToString:@"quit"]){
                
                gameOn = false;
                
                break;
                
            }else if ([willYouPlay isEqualToString:@"roll"]){
                
                [rollDice roll];
                
            }else if ([willYouPlay isEqualToString:@"hold"]){
                NSLog(@"Enter the index of the die you would like to hold");
                select = [UserInput input];
                [rollDice hold:select.integerValue];
                
            }else if ([willYouPlay isEqualToString:@"release"]){
                NSLog(@"Enter the index of the die you would like to release");
                select = [UserInput input];
                [rollDice unHold:select.integerValue];
            }
        }
            

        
    }
    
    return 0;
}
