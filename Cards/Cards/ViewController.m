//
//  ViewController.m
//  Cards
//
//  Created by Alexander Rukin on 10.11.13.
//  Copyright (c) 2013 ru.rukin. All rights reserved.
//

#import "ViewController.h"
#import "Card.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipsCount;
@end

@implementation ViewController


- (void)setFlipsCount:(int)flipsCount {
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipsCount / 2];
}


- (IBAction)touchCardButton:(UIButton *)sender {

    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"CardBack"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else{
        PlayingCardDeck *cardDeck = [[PlayingCardDeck alloc] init];
        Card *randomCard = [cardDeck drawRandomCard];
        [sender setBackgroundImage:[UIImage imageNamed:@"CardFront"] forState:UIControlStateNormal];
        [sender setTitle:randomCard.contents forState:UIControlStateNormal];
    }
    self.flipsCount++;

}


@end