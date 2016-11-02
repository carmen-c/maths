//
//  InputHandler.m
//  Maths
//
//  Created by carmen cheng on 2016-11-01.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler


- (NSString*) convert {
    
        char inputNumber[20];
        
        fgets(inputNumber, 20, stdin);
        NSString *input = [NSString stringWithCString:inputNumber
                                             encoding:NSUTF8StringEncoding];
        
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    return input;


}

@end
