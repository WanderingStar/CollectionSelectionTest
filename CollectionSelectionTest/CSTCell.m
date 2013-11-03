//
//  CSTCell.m
//  CollectionSelectionTest
//
//  Created by Aneel Nazareth on 11/2/13.
//  Copyright (c) 2013 Aneel Nazareth. All rights reserved.
//

#import "CSTCell.h"

@implementation CSTCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setSelected:(BOOL)selected
{
    if (selected) {
        self.backgroundColor = [UIColor redColor];
    } else {
        self.backgroundColor = [UIColor blueColor];
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
