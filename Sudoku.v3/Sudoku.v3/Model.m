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
    if (row > 8 || row < 0)
    {
        return NO;
    }
    
    if (col > 8 || col < 0)
    {
        return NO;
    }
    
    if (initialCells[row*9 + col])
    {
        return NO;
    }
    
    if ([value isEqualToString:@"erase"])
    {
        return YES;
    }
    
    int numericValue = [value intValue];
    
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
    
    int r;
    int c;
    
    if (row<3)
    {
        r=0;
    }
    else if (row<6)
    {
        r=3;
    }
    else
    {
        r=6;
    }
    if (col<3)
    {
        c=0;
    }
    else if (col<6)
    {
        c=3;
    }
    else
    {
        c=6;
    }
    
    for (int i=r; i<r+3; i++)
    {
        for (int j=c; j<c+3; j++)
        {
            if (values[i*9 + j] == numericValue)
            {
                return NO;
            }
        }
    }
    
    if (numericValue > 9 || numericValue < 1)
    {
        return NO;
    }
    
    return YES;
}


-(void) setValueAtRow: (int) rowNumber andColumn: (int) colNumber andValue: (int) value
{
    NSAssert(rowNumber>=0 && rowNumber<=8 && colNumber>=0 && colNumber<=8, @"Row or col out of range");
    NSAssert(value>=0 && value<=9, @"value out of range");
    values[rowNumber*9 + colNumber] = value;
}

-(int) getValueAtRow:(int)rowNumber andColumn:(int)colNumber
{
    return values[rowNumber*9 + colNumber];
}

-(BOOL) isInitialValueAtRow:(int)rowNumber andColumn:(int)colNumber
{
    return initialCells[rowNumber*9 + colNumber];
}

@end
