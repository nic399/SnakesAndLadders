//
//  Player.m
//  SnakesAndLadders
//
//  Created by Nicholas Fung on 2017-10-06.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Player.h"

@implementation Player

-(int)roll{
    return (arc4random_uniform(6)+1);
}






@end
