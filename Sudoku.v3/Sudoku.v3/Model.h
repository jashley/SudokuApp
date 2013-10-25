//
//  Model.h
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GridGenerator.h"

@interface Model : NSObject
{
    int values[81];
    BOOL initialCells[81];
}

-(Model*) init: (GridGenerator*) gridGenerator;
-(void) setValueAtRow: (int) rowNumber andColumn: (int) colNumber andValue: (int) value;
-(int) getValueAtRow: (int)rowNumber andColumn: (int)colNumber;
-(BOOL) isInitialValueAtRow: (int)rowNumber andColumn: (int)colNumber;
-(BOOL) consistentAtRow: (int) row andCol: (int) col andValue: (NSString*) value;

@end
