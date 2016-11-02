//
//  ScoreKeeper.h
//  Maths
//
//  Created by carmen cheng on 2016-11-01.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger right;
@property NSInteger wrong;

-(NSString*)scoreList;

@end
