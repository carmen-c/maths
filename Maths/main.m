//
//  main.m
//  Maths
//
//  Created by carmen cheng on 2016-11-01.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionalQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        
        BOOL gameOn = YES;
        
        printf("Maths!\n Welcome to the Maths game!\n ");
        printf("To quit: type in quit.\n To check your score: type in score.\n");
        
        
        while (gameOn == YES){
                        
            AdditionalQuestion *nquestion = [[AdditionalQuestion alloc]init];
            NSLog(@"%@\n", nquestion.question);
            
            
            InputHandler *IHandler = [[InputHandler alloc]init];
            NSString *convertedInput= [IHandler convert];
            
            
            if ([convertedInput  isEqual: @"quit"]){
                gameOn = NO;
                break;
            }
            
            if ([convertedInput  isEqual: @"score"]){
                NSLog(@"%@",[score scoreList]);
                continue;
            }
            
            
            NSInteger check = [convertedInput integerValue];
            if (check == (long)nquestion.answer) {
                NSLog(@"Right!\n");
                score.right = score.right +1;
            }else{
                NSLog(@"Wrong!\n");
                score.wrong = score.wrong +1;
            }

            
        }
    }
    return 0;
}
