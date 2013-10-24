//
//  Model.m
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import "Model.h"

@implementation Model

-(Model*) init: (GridGenerator*) gridGenerator
{
    NSString* initialString = [gridGenerator createInitialGrid];
    for (int i=0; i<81; i++)
    {
        int j = [initialString characterAtIndex:i];
        if (j == 46)
        {
            values[i] = 0;
            initialCells[i] = NO;
        }
        else
        {
            values[i] = j-48;
            initialCells[i] = YES;
        }
    }
    return self;
} 

-(BOOL) consistentAtRow: (int) row andCol: (int) col andValue: (NSString*) value
{
    int numericValue = [value intValue];
    
    NSLog(@"The value is %d", initialCells[row*9 + col]);
    if (initialCells[row*9 + col])
    {
        return NO;
    }
    
    //check row
    for (int i=0; i<9; i++)
    {
        if (values[row*9 + i] == numericValue)
        {
            return NO;
        }
    }
    
    //check col
    for (int i=0; i<9; ++i)
    {
        if (values[col + i*9] == numericValue)
        {
            return NO;
        }
    }
    
    // Just added this check it before moving on next time
    return YES;
    //check square
    
}


-(void) setValueAtRow: (int) rowNumber andColumn: (int) colNumber andValue: (int) value
{
    
}

@end
