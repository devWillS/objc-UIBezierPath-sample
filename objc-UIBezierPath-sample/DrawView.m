//
//  DrawView.m
//  objc-UIBezierPath-sample
//
//  Created by devWill on 2019/06/29.
//  Copyright © 2019 devWill. All rights reserved.
//

#import "DrawView.h"

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
    [self draw:CGRectMake(100, 100, 100, 100) withText:@"text1" fontSize:10 backgroundColor:[UIColor colorWithRed:1 green:0.5 blue:0 alpha:1.0]];
    
    [self draw:CGRectMake(50, 150, 100, 100) withText:@"text2" fontSize:23 backgroundColor:[UIColor colorWithRed:0 green:0.5 blue:1 alpha:1.0]];
    
    [self draw:CGRectMake(100, 500, 100, 100) withText:@"text3" fontSize:30 backgroundColor:[UIColor colorWithRed:0.5 green:0.75 blue:0.25 alpha:1.0]];
}

- (void) draw:(CGRect)rect withText:(NSString *)text fontSize:(CGFloat)fontSize backgroundColor:(UIColor *)color {
    // 四角形（短形）
    UIBezierPath *rectangle = [UIBezierPath bezierPathWithRect:rect];
    // 内側の色
    [color setFill];
    // 内側を塗りつぶす
    [rectangle fill];
    // 線の色
    [color setStroke];
    // 線の太さ
    [rectangle setLineWidth:2.0f];
    // 線を塗りつぶす
    [rectangle stroke];
    // フォント設定
    UIFont *font = [UIFont systemFontOfSize:fontSize];
    
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys: font, NSFontAttributeName,
                                nil];
    // テキストを描画
    [text drawInRect:rect withAttributes:dictionary];
}

@end
