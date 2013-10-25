//
//  GridCell.m
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import "GridCell.h"

@implementation GridCell

-(GridCell*)initWithFrame: (CGRect)frame andValue:(int)value andTitleColor:(UIColor*)titleColor andColNumber: (int) col andRowNumber: (int) row
{
    self = [super initWithFrame: frame];
    if (self) {
        if (value != 0)
        {
            [self setTitle:[NSString stringWithFormat:@"%d",value] forState:UIControlStateNormal];
        }
        self.titleLabel.font = [UIFont systemFontOfSize:(30)];
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        [self addTarget:self.superview action:@selector(changeValue:) forControlEvents:UIControlEventTouchUpInside];
        colNumber = col;
        rowNumber = row;
    }
    return self;
}

-(int) getRowNumber
{
    return rowNumber;
}

-(int) getColNumber
{
    return colNumber;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end