//
//  DivisionQuestion.m
//  Maths
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init{
    
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

-(int)divRandomValue {
    int lower = 1;
    int upper = 10;
    int randomNumber = lower + arc4random() % (upper - lower);
    return randomNumber;
}

-(void)generateQuestion{
    self.rightValue = [self divRandomValue];
    self.leftValue = self.rightValue * [self divRandomValue];
    super.answer = super.leftValue / super.rightValue;
    super.question = [NSString stringWithFormat:@"%ld ÷ %ld\n", self.leftValue, self.rightValue];
    NSLog(@"%@", super.question);
}

@end
