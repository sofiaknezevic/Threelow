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
       
        //GameController *newGame = [[GameController alloc] initArrayAndSet];

        
        
        BOOL gameOn = true;
        
        while(true){
            
            UserInput *inputUser = [[UserInput alloc] init];
            
            NSLog(@"%@", [inputUser menu]);
            
            if([[UserInput input] isEqualToString:@"quit"]){
                
                gameOn = false;
                
                break;
            }
            
            if ([[UserInput input] isEqualToString:@"roll"]){
                
                
            } else if ([[UserInput input] isEqualToString:@"hold"]){
            
            } else if([[UserInput input] isEqualToString:@"unhold"]){
          
            } else if([[UserInput input] isEqualToString:@"unhold"]){
                
            }
            
            
//            
//            Dice *dice = [[Dice alloc] init];
//            NSLog(@"%d", [dice randomize]);
            
            
            
            

        }
        
    }
    return 0;
}
