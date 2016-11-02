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


-(void)generateQuestion{
    if (super.leftValue > super.rightValue) {
        super.question = [NSString stringWithFormat:@"%ld / %ld\n", super.leftValue, super.rightValue];
        super.answer = super.leftValue / super.rightValue;
    } else {
        super.question = [NSString stringWithFormat:@"%ld / %ld\n", super.rightValue, super.leftValue];
        super.answer = super.rightValue / super.leftValue;
    }
    NSLog(@"%@", super.question);
}

@end
