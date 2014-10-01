//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *result = [[NSMutableString alloc]init];
    NSString *temp;
    
    if (number < otherNumber) {
        for (NSInteger i=number; i<=otherNumber; i++) {
            temp = [NSString stringWithFormat:@"%ld", i];
            [result appendString:temp];
        }
    } else if (otherNumber < number) {
        for (NSInteger i=otherNumber; i<=number; i++) {
            temp = [NSString stringWithFormat:@"%ld", i];
            [result appendString:temp];
        }
    } else if (number == otherNumber) {
        temp = [NSString stringWithFormat:@"%ld", number];
        [result appendString:temp];
    } else {
        [result appendString:@"unknown test"];
    }
     
    return result;
}

@end
