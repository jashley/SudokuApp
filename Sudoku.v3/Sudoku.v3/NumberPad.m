//
//  NumberPad.m
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import "NumberPad.h"
#import "NumberPadCell.h"

@implementation NumberPad

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
        
        // create frame for button
        int originX = self.bounds.size.width * 0.03;
        int originY = originX;
        int size = self.bounds.size.width * .09;
        CGRect numPadButtonFrame = CGRectMake(originX, originY, size, size);
        
        numPadButtons = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            if (i == 0 ) {
                NumberPadCell* x = [[NumberPadCell alloc] initWithTitle: [NSString stringWithFormat:@"erase"] andBackgroundColor:[UIColor yellowColor] andFrame: numPadButtonFrame];
                [numPadButtons insertObject:x atIndex:(i)];
            }
            else {
                NumberPadCell* x = [[NumberPadCell alloc] initWithTitle: [NSString stringWithFormat:@"%d", i] andBackgroundColor: [UIColor whiteColor] andFrame: numPadButtonFrame];
                [numPadButtons insertObject:x atIndex:(i)];
            }
            [self addSubview:[numPadButtons objectAtIndex:(i)]];
            originX += self.bounds.size.width * 0.095;
            numPadButtonFrame = CGRectMake(originX, originY, size, size);
        }
        highlightedButtonIndex = 0;
    }
    return self;
}



-(void)updateNumPadCellHighlighted:(id)sender
{
    NumberPadCell* numberPressed = sender;
    [[numPadButtons objectAtIndex:highlightedButtonIndex] setBackgroundColor:[UIColor whiteColor]];
    [numberPressed setBackgroundColor:[UIColor yellowColor]];
    if ([[numberPressed titleLabel] isEqual: @"erase"]) {
        highlightedButtonIndex = 0;
    }
    else {
        highlightedButtonIndex = [[numberPressed titleLabel].text intValue];
    }
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
