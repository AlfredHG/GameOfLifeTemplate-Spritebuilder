//
//  Grid.m
//  GameOfLife
//
//  Created by Helldrik on 02/02/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "Grid.h"
#import "Creature.h"

static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;

@implementation Grid {
    NSMutableArray *_gridArray;
    float _cellWidth;
    float _cellHeight;
}

- (void)onEnter {
    [super onEnter];
    
    [self setupGrid];
    
    // accept touches on the grid
    self.userInteractionEnabled = YES;
}

- (void)setupGrid {
    // divide the grid's size by the number of columns/rows
    _cellWidth = self.contentSize.width / GRID_COLUMNS;
    _cellHeight = self.contentSize.height / GRID_ROWS;
    
    float x = 0;
    float y = 0;
    
    //initialize the array
    _gridArray = [NSMutableArray array];
    
    //initialize creatures
    for (int i = 0; i < GRID_ROWS; i++) {
        _gridArray[i] = [NSMutableArray array];
        x=0;
        
        for (int j = 0;  j < GRID_COLUMNS; j ++) {
            Creature *creature = [[Creature alloc] initCreature];
            creature.anchorPoint = ccp(0,0);
            creature.position = ccp(x, y);
            [self addChild:creature];
            
            //scorciatoia per accedere ad un array dentro array!!!!
            _gridArray[i][j] = creature;
            
            //test visibilita`
            creature.isAlive = YES;
            
            x+=_cellWidth;
        }
        
        y+=_cellHeight;
    }
}

@end
