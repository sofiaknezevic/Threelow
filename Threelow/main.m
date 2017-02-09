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

        for(int i = 0; i<5; i++){
            Dice *dice = [[Dice alloc] init];
            NSLog(@"%d", [dice randomize]);
        }
        
        BOOL gameOn = TRUE;
        
        
        
        while (gameOn) {
            
            NSString *willYouPlay = [UserInput input];
        
            if([willYouPlay isEqualToString:@"quit"]){
                
                gameOn = false;
                
                break;
            }else if ([willYouPlay isEqualToString:@"roll"]){
                
                
            }
        }
            

        
    }
    
    return 0;
}
