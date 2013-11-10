//
// Created by Alexander Rukin on 10.11.13.
//


#import "PlayingCardDeck.h"
#import "PlayingCard.h"


@interface PlayingCardDeck ()

@end


@implementation PlayingCardDeck


- (instancetype)init {
    self = [super init];

    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.suit = suit;
                card.rank = rank;
                [self addCard:card];
            }
        }
    }

    return self;
}


@end