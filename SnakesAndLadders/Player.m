//
//  Player.m
//  SnakesAndLadders
//
//  Created by Nicholas Fung on 2017-10-06.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _name = name;
    }
    return self;
}

-(int)rollDie{
    int rolledNum = arc4random_uniform(6)+1;
    NSLog(@"Player %@ is currently on square %d", self.name, self.currentSquare);
    NSLog(@"Rolled a %d", rolledNum);
    self.currentSquare +=rolledNum;
    NSLog(@"Player %@ is now on square %d", self.name, self.currentSquare);
    return self.currentSquare;
}






@end
