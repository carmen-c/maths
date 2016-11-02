//
//  ScoreKeeper.m
//  Maths
//
//  Created by carmen cheng on 2016-11-01.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString* )scoreList {
    
        NSString *scoreKeeping;
        if ((long)_right + (long)_wrong != 0) {
            NSInteger total = (long)_right + (long)_wrong;
            CGFloat percent = ((float)_right/total) * 100;
            scoreKeeping = [NSString stringWithFormat:@"score: %ld right and %ld wrong ---- %f%%\n", (long)_right, (long)_wrong, percent];
        }
        return scoreKeeping;
}
    
@end
