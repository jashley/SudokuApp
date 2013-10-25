//
//  Sudoku_v3Tests.m
//  Sudoku.v3Tests
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import "Sudoku_v3Tests.h"

@implementation Sudoku_v3Tests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    gridGeneratorTest = [[GridGenerator alloc] testInit];
    modelTest = [[Model alloc] init: gridGeneratorTest];
    
    STAssertNotNil(gridGeneratorTest, @"gridGeneratorTest was not initialized properly");
    STAssertNotNil(modelTest, @"modelTest was not initialized properfly");
    
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

-(void) testOutOfRangeIndexForSet
{
    STAssertThrows([modelTest setValueAtRow:10 andColumn:10 andValue:8], @"testOutOfRangeIndexForSet");
}

-(void) testOutOfRangeValueForSet
{
    STAssertThrows([modelTest setValueAtRow:6 andColumn:7 andValue:42], @"testOutOfRangeValueForSet");
}
                    
                    
-(void) testNotConsistentRow
{
    STAssertEquals([modelTest consistentAtRow:0 andCol:1 andValue:@"3"], NO, @"testNotConsistentRow failed.");
}

-(void) testNotConsistentCol
{
    STAssertEquals([modelTest consistentAtRow:1 andCol:1 andValue:@"1"], NO, @"testNotConsistentCol failed.");
}

-(void) testNotConsistentSquare
{
    STAssertEquals([modelTest consistentAtRow:4 andCol:5 andValue:@"5"], NO, @"testNotConsistentSquare failed.");
}

-(void) testNotConsistentInitialValue
{
    STAssertEquals([modelTest consistentAtRow:1 andCol:0 andValue:@"5"], NO, @"testNotConsistentInitialValue failed.");
}

-(void) testConsistent
{
    STAssertEquals([modelTest consistentAtRow:0 andCol:0 andValue:@"1"], YES, @"testConsistent failed.");
}

-(void) testConsistentOutOfBoundsValue
{
    STAssertEquals([modelTest consistentAtRow:0 andCol:0 andValue:@"47"], NO, @"testNotConsistentOutOfBoundsValue failed.");
}

-(void) testConsistentOutOfBoundsCell
{
    STAssertEquals([modelTest consistentAtRow:42 andCol:97 andValue:@"8"], NO, @"testNotConsistentOutOfBoundsCell failed.");
}



-(void) testSudokuStringLength
{
    NSUInteger EIGHTY_ONE = 81;
    NSUInteger strLen = [[gridGeneratorTest createInitialGrid] length];
    STAssertEquals(strLen, EIGHTY_ONE, @"testSudokuStringLength failed.");
}


@end
