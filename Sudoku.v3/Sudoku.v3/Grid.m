//
//  Grid.m
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import "Grid.h"
#import "GridCell.h"

@implementation Grid

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
        CGRect buttonFrame = CGRectMake(originX, originY, size, size);
        
        buttons = [[NSMutableArray alloc] init];
        
        int fakeNumbers[] = {0,0,0,0,2,0,0,3,7,4,0,7,6,0,0,0,8,0,5,0,2,4,0,7,0,0,1,8,0,6,3,0,0,0,5,0,3,0,4,0,6,0,0,1,8,0,1,0,0,5,0,0,0,6,6,0,0,0,7,0,0,0,0,0,0,0,9,0,0,0,0,5,0,9,8,0,0,6,0,0,0};
        
        // create the buttons and add them as subviews
        for (int i = 0; i < 9; i++) {
            for (int j = 0; j < 9; j++) {
                GridCell* x;
                if (fakeNumbers[i*9+j] != 0) {
                    x = [[GridCell alloc] initWithFrame:buttonFrame andValue:fakeNumbers[i*9+j] andTitleColor:[UIColor blueColor] andColNumber:j andRowNumber:i];
                }
                else {
                    x = [[GridCell alloc] initWithFrame:buttonFrame andValue:0 andTitleColor:[UIColor blackColor] andColNumber:j andRowNumber:i];
                    [x setTitle:nil forState:UIControlStateNormal]; //cheating
                }
                x.backgroundColor = [UIColor whiteColor];
                [buttons insertObject:x atIndex:(i*9 + j)];
                [self addSubview:[buttons objectAtIndex:(i*9 + j)]];
                if (j == 8) {
                    originX = self.bounds.size.width * (3.0/99);
                }
                else if ((j+1)%3 == 0) {
                    originX += self.bounds.size.width * (12.0/99);
                }
                else {
                    originX += self.bounds.size.width * (10.0/99);
                }
                buttonFrame = CGRectMake(originX, originY, size, size);
            }
            if ((i+1)%3 == 0) {
                originY += self.bounds.size.width * (12.0/99);
            }
            else {
                originY += self.bounds.size.width * (10.0/99);
            }
            
            buttonFrame = CGRectMake(originX, originY, size, size);
        }
    }
    return self;
}

-(void) changeValue: (id) sender
{
    BNCViewController* x = [BNCViewController alloc];
    [x gridCellTap:sender];
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
