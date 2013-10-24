//
//  Sudoku_v3Tests.h
//  Sudoku.v3Tests
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "Model.h"


@interface Sudoku_v3Tests : SenTestCase
{
    Model* modelTest;
    GridGenerator* gridGeneratorTest;
}

-(void) testOutOfRangeIndexForSet;

-(void) testOutOfRangeValueForSet;

-(void) testNotConsistentRow;

-(void) testNotConsistentCol;

-(void) testNotConsistentSquare;

-(void) testNotConsistentInitialValue;

-(void) testConsistent;

-(void) testConsistentOutOfBoundsValue;

-(void) testConsistentOutOfBoundsCell;

-(void) testSudokuStringLength;

@end
