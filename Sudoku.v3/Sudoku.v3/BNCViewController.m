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
    
    theNumberPad = [[NumberPad alloc] initWithFrame:numPadFrame];
    [self.view addSubview:theNumberPad];
    
    GridGenerator* x = [[GridGenerator alloc] init];
    [x createInitialGrid];
    
}

-(NSString*)gridCellTap: (id)sender
{
    
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
