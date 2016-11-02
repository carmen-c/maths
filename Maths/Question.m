//
//  Question.m
//  Maths
//
//  Created by carmen cheng on 2016-11-01.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init{

    if (self = [super init]) {
        _startTime = [NSDate date];
        _rightValue = arc4random_uniform(90) +10;
        _leftValue = arc4random_uniform(90) +10;
        
//        NSInteger answer = _leftValue + _rightValue;
//        NSString * combinedNumbers = [NSString stringWithFormat:@"%ld + %ld\n", _leftValue, _rightValue];
//        _question = combinedNumbers;
//        _answer = answer;
        
    }

    return self;
}

-(NSInteger) answer{
    _endTime = [NSDate date];
    return _answer;
}

-(NSInteger) answerTime{
    return [self.endTime timeIntervalSinceDate: self.startTime];
}

-(void) generateQuestion{
}

@end

