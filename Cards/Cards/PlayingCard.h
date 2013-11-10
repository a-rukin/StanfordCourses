//
// Created by Alexander Rukin on 10.11.13.
//


#import "Card.h"


@interface PlayingCard : Card


@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end