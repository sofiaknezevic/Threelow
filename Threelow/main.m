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
        
        GameController *rollDice = [[GameController alloc] init];
        
        UserInput *menuGame = [[UserInput alloc] init];
        
        while (gameOn) {
            
            NSLog(@"%@",[menuGame menu]);
            
            NSString *selection;
            
            NSString *willYouPlay = [UserInput input];
        
            if([willYouPlay isEqualToString:@"quit"]){
                
                gameOn = false;
                
                break;
                
            }else if ([willYouPlay isEqualToString:@"roll"]){
                
                [rollDice roll];
                
            }else if ([willYouPlay isEqualToString:@"hold"]){
                
                NSLog(@"\nEnter the index of the die you would like to hold");
                selection = [UserInput input];
                [rollDice hold:selection.integerValue];
                
                
            }else if ([willYouPlay isEqualToString:@"release"]){
                
                NSLog(@"\nEnter the index of the die you would like to release");
                selection = [UserInput input];
                [rollDice unHold:selection.integerValue];
                
            }else if([willYouPlay isEqualToString:@"reset"]){
                
                [rollDice reset];
                
            }else{
                
                NSLog(@"I'm afraid you have entered a false command! Pay ATTENTION!");
                
            }
            
            [rollDice score];
        }
            

        
    }
    
    return 0;
}
