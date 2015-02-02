//
//  Creature.h
//  GameOfLife
//
//  Created by Helldrik on 02/02/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

// current state of the creature
@property (nonatomic, assign) BOOL isAlive;

// amount of living neighbors
@property (nonatomic, assign) NSInteger livingNeighbors;

- (id)initCreature;

@end
