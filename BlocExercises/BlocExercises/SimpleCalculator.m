//
//  SimpleCalculator.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "SimpleCalculator.h"

@implementation SimpleCalculator

- (NSInteger) increaseNumberBy1:(NSInteger) sourceNumber {
    NSInteger resultNumber = sourceNumber + 1;
    return resultNumber;
}

- (NSInteger) addNumber:(NSInteger) firstOperand toNumber:(NSInteger) secondOperand {
    NSInteger resultNumber = firstOperand + secondOperand;
    return resultNumber;
}

- (NSInteger) remainderOfNumber:(NSInteger) dividend dividedByNumber:(NSInteger) divisor {
    NSInteger remainder = dividend % divisor;
    return remainder;
}

@end
