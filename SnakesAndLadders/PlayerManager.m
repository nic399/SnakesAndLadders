//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Nicholas Fung on 2017-10-09.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

-(instancetype)init{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc] init];
        _board = [[GameBoard alloc] init];
        _currentPlayer = 0;
    }
    return self;
}

-(void)createPlayers{
    Player *newPlayer = [[Player alloc] init];
    int playNumber = (int) [self.players count] + 1;
    newPlayer.name = [NSString stringWithFormat:@"Player %d", playNumber];
    NSLog(@"%@", newPlayer.name);
    [self.players addObject:newPlayer];
    NSLog(@"there are %lu players", (unsigned long)[_players count]);
}

-(void)roll {
    int newSquare = [self.players[self.currentPlayer] rollDie];
    
}
@end
