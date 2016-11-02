//
//  AdditionQuestion.m
//  Maths
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init{
    
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}


-(void)generateQuestion{
    super.question = [NSString stringWithFormat:@"%ld + %ld\n", super.leftValue, super.rightValue];
    super.answer = super.leftValue + super.rightValue;
    NSLog(@"%@", super.question);
    }

@end
