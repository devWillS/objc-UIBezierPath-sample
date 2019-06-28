//
//  ViewController.m
//  objc-UIBezierPath-sample
//
//  Created by devWill on 2019/06/29.
//  Copyright © 2019 devWill. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"

@interface ViewController ()

@end

@implementation ViewController
DrawView *drawView;

- (void)viewDidLoad {
    [super viewDidLoad];
    drawView = [[DrawView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:drawView];
}


@end
