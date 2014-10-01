//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSLog(@"characterString should read: %@", characterString);
    
    NSArray *actualArray = [characterString componentsSeparatedByString:@";"];
    return actualArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSString *actualString = [characterArray componentsJoinedByString:@";"];
    return actualString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *actualArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [actualArray sortUsingDescriptors:@[sortDescriptor]];
    return actualArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
   
    NSMutableArray *wolfTest = [characterArray mutableCopy];
    NSPredicate *containsWolf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    
    [wolfTest filterUsingPredicate:containsWolf];
    
    if ([wolfTest count] == 0) {
        return NO;
    } return YES;
}

@end
