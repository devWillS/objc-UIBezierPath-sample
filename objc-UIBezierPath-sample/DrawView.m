//
//  DrawView.m
//  objc-UIBezierPath-sample
//
//  Created by devWill on 2019/06/29.
//  Copyright © 2019 devWill. All rights reserved.
//

#import "DrawView.h"
#import "DrawRectWithText.h"

@implementation DrawView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self setUserInteractionEnabled:NO];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [DrawRectWithText draw:CGRectMake(100, 100, 100, 100) withText:@"text1" fontSize:10 backgroundColor:[UIColor colorWithRed:1 green:0.5 blue:0 alpha:1.0]];
    
    [DrawRectWithText draw:CGRectMake(50, 150, 100, 100) withText:@"text2" fontSize:23 backgroundColor:[UIColor colorWithRed:0 green:0.5 blue:1 alpha:1.0]];
    
    [DrawRectWithText draw:CGRectMake(100, 500, 100, 100) withText:@"text3" fontSize:30 backgroundColor:[UIColor colorWithRed:0.5 green:0.75 blue:0.25 alpha:1.0]];
}

@end
