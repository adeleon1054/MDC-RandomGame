//
//  main.m
//  RandomGame
//
//  Created by Asdruval De Leon on 8/30/17.
//  Created by Daniel Pinto on 8/30/17.
//
//  Copyright © 2017 ITCPremier. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    const int LOW = 1;
    const int HIGH = 100;
    
    @autoreleasepool {
        int mySecretNumber;
        int guess;
        int count = 0;
        
        
            //computer will guess a number
            mySecretNumber = arc4random() % (HIGH-LOW) + LOW;
        
        
        NSLog(@"Enter a guess #: ");
        scanf("%d", &guess);
            

        for(int i = 1; i <= 9; i++)
        {
            count = i;
            
            if(guess < mySecretNumber)
            {
                NSLog(@"It's too low, try again");
                scanf("%d", &guess);
            }
            else if(guess > mySecretNumber)
            {
                NSLog(@"It's too high, try again");
                scanf("%d", &guess);
            }
            else
            {
                NSLog(@"Congratulations, you hit the number.");
                NSLog(@"Your number of gueses is %d", count);
                break;
            }
            
            
            
        }
        
        
        if (count == 9)
        NSLog(@"Game Over");
        
        
        
    }
    return 0;
}
