//
//  BNCViewController.m
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import "BNCViewController.h"

@interface BNCViewController ()

@end

@implementation BNCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    //create frame for board
    int originX = self.view.bounds.size.width * 0.10;
    int originY = self.view.bounds.size.height * 0.10;
    int size = MIN(self.view.bounds.size.width, self.view.bounds.size.height)*0.6;
    CGRect gridFrame = CGRectMake(originX, originY, size, size);
    
    //create frame for numberPad
    originX = self.view.bounds.size.width * 0.10;
    originY = self.view.bounds.size.height * 0.70;
    size = MIN(self.view.bounds.size.width, self.view.bounds.size.height)*0.7;
    CGRect numPadFrame = CGRectMake(originX, originY, size, size * 0.15);
    
    //create the board
    theGrid = [[Grid alloc] initWithFrame:gridFrame];
    [self.view addSubview:theGrid];
    [theGrid setOwner:self];
    
    theNumberPad = [[NumberPad alloc] initWithFrame:numPadFrame];
    [self.view addSubview:theNumberPad];
    [theNumberPad setOwner:self];
    
    theGridGenerator = [[GridGenerator alloc] init];
    
    theModel = [[Model alloc] init:theGridGenerator];
    
    numberHighlighted = @"erase";
    
    for (int r=0; r<9; r++)
    {
        for (int c=0; c<9; c++)
        {
            int val = [theModel getValueAtRow:r andColumn:c];
            BOOL initial = [theModel isInitialValueAtRow:r andColumn:c];
            
            if (initial)
            {
                [theGrid setInitialValueAtRow:r andColumn:c andValue:val];
            }
        }
    }
    
}

-(NSString*)gridCellTap: (id)sender
{
    int row = [sender getRowNumber];
    int col = [sender getColNumber];
    int numericValue;
    if ([numberHighlighted isEqualToString:@"erase"])
    {
        numericValue = 0;
    }
    else
    {
        numericValue = [numberHighlighted intValue];
    }
    if ([theModel consistentAtRow:row andCol:col andValue:numberHighlighted])
    {
        [theModel setValueAtRow:row andColumn:col andValue:numericValue];
        return numberHighlighted;
    }
    else
    {
        return [NSString stringWithFormat:@"%d",[theModel getValueAtRow:row andColumn:col]];
    }
}

-(void)updateNumPadCellHighlighted:(id)sender
{
    numberHighlighted = [sender currentTitle];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
