//
//  NumberPad.h
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NumberPadCell.h"

@class BNCViewController;

@interface NumberPad : UIView
{
    NSMutableArray* numPadButtons;
    int highlightedButtonIndex;
    BNCViewController* myOwner;
}

-(void)updateNumPadCellHighlighted: (id)sender;
-(void) setOwner: (BNCViewController*) controller;

@end
