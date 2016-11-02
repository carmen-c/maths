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


-(void)generateQuestion{
    super.question = [NSString stringWithFormat:@"%ld x %ld\n", super.leftValue, super.rightValue];
    super.answer = super.leftValue * super.rightValue;
    NSLog(@"%@", super.question);
}

@end
