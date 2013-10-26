//
//  GridCell.h
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GridCell : UIButton
{
    int colNumber;
    int rowNumber;
}

-(GridCell*)initWithFrame: (CGRect)frame andValue:(int)value andTitleColor:(UIColor*)titleColor andColNumber: (int) col andRowNumber: (int) row;

-(int) getRowNumber;
-(int) getColNumber;

@end