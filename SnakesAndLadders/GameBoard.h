//
//  GameBoard.h
//  SnakesAndLadders
//
//  Created by Nicholas Fung on 2017-10-09.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameBoard : NSObject

@property (nonatomic, strong, readonly) NSDictionary *gameBoard;

-(int)actionForSquare:(int)square;

@end
