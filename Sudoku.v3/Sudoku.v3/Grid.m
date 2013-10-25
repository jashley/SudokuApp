//
//  Grid.m
//  Sudoku.v3
//
//  Created by CS121 on 9/20/13.
//  Copyright (c) 2013 CS121. All rights reserved.
//

#import "Grid.h"
#import "BNCViewController.h"

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
        
        // create the buttons and add them as subviews
        for (int i = 0; i < 9; i++) {
            for (int j = 0; j < 9; j++) {
                GridCell* x =[[GridCell alloc] initWithFrame:buttonFrame andValue:0 andTitleColor:[UIColor blackColor] andColNumber:j andRowNumber:i];
                [x setBackgroundColor:[UIColor whiteColor]];
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
    NSString* setValue = [myOwner gridCellTap:sender];
    if ([setValue isEqualToString:@"erase"] || [setValue isEqualToString:@"0"])
    {
        [sender setTitle:nil forState:UIControlStateNormal];
    }
    else
    {
        [sender setTitle:setValue forState:UIControlStateNormal];
    }

}

-(void) setInitialValueAtRow:(int)row andColumn:(int)column andValue:(int)value
{
    GridCell* x = [buttons objectAtIndex:(row*9 + column)];
    [x setTitle: [NSString stringWithFormat:@"%d",value] forState:UIControlStateNormal];
    [x setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
}
     
-(void) setOwner:(BNCViewController *)controller
{
    myOwner = controller;
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
