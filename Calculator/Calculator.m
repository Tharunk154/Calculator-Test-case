//
//  Calculator.m
//  Calculator
//
//  Created by kalige tharun  on 20/04/2017.
//  Copyright © 2017 kalige tharun . All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

/**
 * @brief - This method will help to caluclate multiplication
   @input - Array with sequence of input of strings
   @return -  Return an Integer
 */
+(NSInteger)multiplyTheGivenInputSequenceOfStringsFromAnArray:(NSArray*)input
{
    NSInteger result;
    result = 1;
    for (int i=0; i<[input count]; i++)
    {
        result*=[[input objectAtIndex:i] integerValue];
    }
    NSLog(@"%ld ",(long)result);
    return result;
}
@end
