//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Nicholas Fung on 2017-10-09.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "GameBoard.h"

@interface PlayerManager : NSObject

@property (nonatomic, strong, readwrite) NSMutableArray *players;
@property (nonatomic, strong, readonly) GameBoard *board;
@property (nonatomic, assign, readwrite) int currentPlayer;

-(void)createPlayers;

-(void)roll;

@end
