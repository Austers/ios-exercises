//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSMutableString *itemToReturn = [NSMutableString stringWithFormat:@""];

    NSString *getOut = [NSString stringWithFormat:@"get out of my store"];
    NSString *haveGum = [NSString stringWithFormat:@"have some gum"];
    NSString *haveApple = [NSString stringWithFormat:@"have an apple"];
    NSString *haveAppleComputer = [NSString stringWithFormat:@"have an Apple computer"];
    NSString *haveBigApple = [NSString stringWithFormat:@"have The Big Apple"];
    
    if (dollars == 4) {
        [itemToReturn setString:getOut];
    } else if (dollars == 5) {
        [itemToReturn setString:haveGum];
    } else if (dollars ==6) {
        [itemToReturn setString:haveApple];
    } else if (dollars == 1000) {
        [itemToReturn setString:haveAppleComputer];
    } else if (dollars == 1000000000) {
        [itemToReturn setString:haveBigApple];
    }
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {

    NSUInteger cost = 24;
    
    if (self.getsDiscount) {
        cost *= .75;
    }
    return cost;
}

@end
