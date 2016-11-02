//
//  main.m
//  Maths
//
//  Created by carmen cheng on 2016-11-01.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        
        BOOL gameOn = YES;
        
        
        printf("Maths!\n Welcome to the Maths game!\n ");
        printf("To quit: type in quit.\n To check your score: type in score.\n");
        
        QuestionManager *manager = [[QuestionManager alloc]init];
        
        while (gameOn == YES){
                        
            Question *nquestion = [[Question alloc]init];
            NSLog(@"%@\n", nquestion.question);
            [manager addQuestionToArray: nquestion];
            
            InputHandler *IHandler = [[InputHandler alloc]init];
            NSString *convertedInput= [IHandler convert];
            
            
            if ([convertedInput  isEqual: @"quit"]){
                NSLog(@"bye!");
                gameOn = NO;
                break;
            }
            
            if ([convertedInput  isEqual: @"score"]){
                NSLog(@"%@",[score scoreList]);
                continue;
            }
            
            
            NSInteger check = [convertedInput integerValue];
            
            if (check == [nquestion answer]) {
                NSLog(@"Right!\n");
                score.right = score.right +1;
            }else{
                NSLog(@"Wrong!\n");
                score.wrong = score.wrong +1;
            }
            
            NSLog(@"%@",[manager timeOutput]);
            
        }
    }
    return 0;
}
