//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init{
    
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

-(int)multRandomValue {
    int lower = 1;
    int upper = 12;
    int randoNumber = lower + arc4random() % (upper - lower);
    return randoNumber;
}

-(void)generateQuestion{
    self.leftValue = [self multRandomValue];
    self.rightValue = [self multRandomValue];
    super.question = [NSString stringWithFormat:@"%ld x %ld\n", self.leftValue, self.rightValue];
    super.answer = super.leftValue * super.rightValue;
    NSLog(@"%@", super.question);
}

@end
