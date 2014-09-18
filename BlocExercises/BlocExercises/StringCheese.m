//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *) cheeseName {
   
    NSString *result = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return result;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    NSRange cheeseRemoval = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    NSString *cheeseAfterRemoval = [cheeseName stringByReplacingCharactersInRange:cheeseRemoval withString:@""];
    
    if (cheeseRemoval.length != 7) {
        return cheeseName;
    } else
    return cheeseAfterRemoval;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSInteger cheeseNumber = cheeseCount;
    NSString *singleCheese = [NSString stringWithFormat:@"%ld cheese", (long)cheeseCount];
    NSString *moreThanOneCheese = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
    
    if (cheeseNumber == 1) {
        return singleCheese;
    } else {
        return moreThanOneCheese;
    }
    
    return nil;
}

@end
