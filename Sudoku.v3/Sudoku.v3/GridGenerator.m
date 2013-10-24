//
//  GridGenerator.m
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import "GridGenerator.h"

@implementation GridGenerator

-(GridGenerator*) init
{
    gameNumber = 0;
    NSString* path = [[NSBundle mainBundle] pathForResource:@"sudokus0" ofType:@"txt"];
    NSError* error;
    NSString* bigString = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error: &error];
    sudokus = [bigString componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n"]];
    return self;
}

-(NSString*) createInitialGrid
{
    return sudokus[gameNumber];
}

@end
