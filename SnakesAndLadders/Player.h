//
//  Player.h
//  SnakesAndLadders
//
//  Created by Nicholas Fung on 2017-10-06.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, assign, readwrite) int currentSquare;

-(instancetype)initWithName:(NSString *)name;
-(int)rollDie;

@end
