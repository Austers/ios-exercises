//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
   
    int extracted = [number intValue];
    int result = extracted * 2;
    
    NSNumber *answer = [NSNumber numberWithInt:result];
    return answer;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *resultArray = [[NSMutableArray alloc]init];
    NSInteger temp;
    
    if (number < otherNumber) {
        for (NSInteger i=number; i<=otherNumber; i++) {
            temp = i;
            NSNumber *convTemp = [NSNumber numberWithInteger:temp];
            [resultArray addObject:convTemp];
        }
        
        for (NSInteger idx = 0; idx < resultArray.count; idx++) {
            NSLog(@"Number %ld: %@", idx, resultArray[idx]);
        }
    
        
    } else if (otherNumber < number) {
        for (NSInteger i=otherNumber; i<=number; i++) {
            temp = i;
            NSNumber *convTemp = [NSNumber numberWithInteger:temp];
            [resultArray addObject:convTemp];
            }
        }return resultArray;
    }


- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSMutableArray *sortingArray = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]initWithKey:nil ascending:YES];
    [sortingArray sortUsingDescriptors:@[sortDescriptor]];
    
    NSInteger result = [sortingArray[0] longValue];
    
    return result;
}

@end
