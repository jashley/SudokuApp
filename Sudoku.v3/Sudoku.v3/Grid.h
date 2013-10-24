//
//  Grid.h
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GridCell.h"
#import "BNCViewController.h"

@interface Grid : UIView
{
    NSMutableArray* buttons;
}

-(void) changeValue: (id) sender;

@end