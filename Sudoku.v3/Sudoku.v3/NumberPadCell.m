//
//  NumberPadCell.m
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import "NumberPadCell.h"

@implementation NumberPadCell

-(NumberPadCell*) initWithTitle: (NSString*) title andBackgroundColor: (UIColor*) backgroundColor andFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setBackgroundColor:backgroundColor];
    }
    
    [self addTarget:(self.superview) action:@selector(updateNumPadCellHighlighted:) forControlEvents:(UIControlEventTouchUpInside)];
    
    
    return self;
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
