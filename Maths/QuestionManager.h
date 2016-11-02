//
//  QuestionManager.h
//  Maths
//
//  Created by carmen cheng on 2016-11-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject
-(NSString*) timeOutput;
-(void) addQuestionToArray:(Question*)question;
@end
