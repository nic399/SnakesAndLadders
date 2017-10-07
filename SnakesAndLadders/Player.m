//
//  Player.m
//  SnakesAndLadders
//
//  Created by Nicholas Fung on 2017-10-06.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)init{
    self = [super init];
    if (self) {
        _name = @"playerName";
        _currentSquare = 0;
    }
    return self;
}

-(int)roll{
    int rolledNum = arc4random_uniform(6)+1;
    NSLog(@"Player %@ is currently on square %d", self.name, self.currentSquare);
    NSLog(@"Rolled a %d", rolledNum);
    self.currentSquare +=rolledNum;
    NSLog(@"Player %@ is now on square %d", self.name, self.currentSquare);
    return rolledNum;
}






@end
