//
//  CSHBaseVC.m
//  BaseTest
//
//  Created by csh on 16/6/1.
//  Copyright © 2016年 csh. All rights reserved.
//

#import "CSHBaseVC.h"

@interface CSHBaseVC ()

@end

@implementation CSHBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setBlock {
    [NSException raise:@"setBlock"
                format:@"子类重写这个方法."];
}

- (void)setUI {
    [NSException raise:@"setUI"
                format:@"子类重写这个方法"];
}

@end
