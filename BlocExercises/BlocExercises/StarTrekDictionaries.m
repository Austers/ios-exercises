//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSString *favoriteDrink = characterDictionary[@"favorite drink"];
        return favoriteDrink;
    }

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSArray *favoriteDrinks = [charactersArray valueForKey:@"favorite drink"];
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *dictionaryWithQuote = [characterDictionary mutableCopy];
    [dictionaryWithQuote setObject:@"Here all, trust nothing" forKey:@"quote"];
    
    return dictionaryWithQuote;
}

@end
