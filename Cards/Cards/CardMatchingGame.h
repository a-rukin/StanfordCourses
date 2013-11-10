//
// Created by Alexander Rukin on 11.11.13.
//


#import <Foundation/Foundation.h>
#import "Deck.h"


@interface CardMatchingGame : NSObject


- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;

@property (readonly, nonatomic)NSInteger score;


@end