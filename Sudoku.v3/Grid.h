//
//  Grid.h
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GridCell.h"

@class BNCViewController;

@interface Grid : UIView
{
    NSMutableArray* buttons;
    BNCViewController* myOwner;
}
-(id)initWithFrame:(CGRect)frame;
//-(void) changeValue: (id) sender;
-(void) setInitialValueAtRow: (int)row andColumn: (int) column andValue: (int) value;
-(void) setOwner: (BNCViewController*) controller;

@end