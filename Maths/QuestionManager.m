//
//  QuestionManager.m
//  Maths
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "QuestionManager.h"


@interface QuestionManager ()
@property (nonatomic) NSMutableArray *questions;
@property (nonatomic) int totalTime;
@end

@implementation QuestionManager

-(instancetype) init{
    self =  [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}

-(NSString*) timeOutput{
    
    for (NSInteger i = 0; i < self.questions.count; i++) {
    _totalTime += [[self.questions objectAtIndex:i] answerTime];
    }
    
    NSInteger averageTime = _totalTime / self.questions.count;
    
    NSString *time = [NSString stringWithFormat:@"total time: %ds, average time: %lds", _totalTime, (long)averageTime];
    return time;
}

-(void) addQuestionToArray:(Question*)question {
    [self.questions addObject:question];
    
}

@end
