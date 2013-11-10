//
// Created by Alexander Rukin on 10.11.13.
//


@import Foundation;


@interface Card : NSObject


@property(strong, nonatomic) NSString *contents;

@property(nonatomic, getter=isChecked) BOOL checked;
@property(nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;


@end