//
//  NumberPad.h
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumberPad : UIView
{
    NSMutableArray* numPadButtons;
    int highlightedButtonIndex;
}

-(void) highlightPressed: (id) sender;
-(void)updateNumPadCellHighlighted: (id)sender;

@end
