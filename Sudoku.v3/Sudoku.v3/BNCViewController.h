//
//  BNCViewController.h
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Grid.h"
#import "NumberPad.h"
#import "Model.h"

@interface BNCViewController : UIViewController
{
    Grid* theGrid;
    NumberPad* theNumberPad;
    NSString* numberHighlighted;
    GridGenerator* theGridGenerator;
    Model* theModel;
}
-(NSString*)gridCellTap: (id)sender;
-(void)updateNumPadCellHighlighted: (id)sender;

@end

