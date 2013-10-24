//
//  BNCViewController.h
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Grid.h"
#import "GridCell.h"
#import "NumberPad.h"
#import "GridGenerator.h"

@interface BNCViewController : UIViewController
{
    UIView* theGrid;
    UIView* theNumberPad;
    NSString* numberHighlighted;
}
-(NSString *)gridCellTap: (id)sender;
-(void)updateNumPadCellHighlighted: (id)sender;

@end

