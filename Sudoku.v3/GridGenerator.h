//
//  GridGenerator.h
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GridGenerator : NSObject
{
    int gameNumber;
    NSArray* sudokus;
    NSString* currentGame;
}

-(GridGenerator*) init;
-(GridGenerator*) testInit;
-(NSString*) createInitialGrid;

@end
