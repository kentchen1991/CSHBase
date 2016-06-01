//
//  CBNavigationController.m
//  H5Competition
//
//  Created by apple on 15-6-9.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "CBNavigationController.h"

extern BOOL g_PopGestureEnabled;
BOOL g_PopGestureEnabled = YES;// 用来控制是否可以用左滑手势返回上一个页面

@interface CBNavigationController ()

@end

@implementation CBNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __weak CBNavigationController *weakSelf = self;
   
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
    {
        self.interactivePopGestureRecognizer.delegate = weakSelf;
        self.delegate = weakSelf;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// Hijack the push method to disable the gesture

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{    
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)])
        self.interactivePopGestureRecognizer.enabled = NO;
    //添加tabBar隐藏
    if (self.viewControllers.count > 0) {
        [viewController setHidesBottomBarWhenPushed:YES];
        [self navRightBtn:viewController];//设置返回按钮
    }
    [super pushViewController:viewController animated:animated];
}

-(void)navRightBtn:(UIViewController*)vc {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"back_arrow"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"back_arrow"] forState:UIControlStateHighlighted];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, -20, 0, 0)];
    [button addTarget:self action:@selector(popViewControllerAnimated:) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(0, 0, 30, 30)];
    // 修改导航栏左边的item
    vc.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
}


#pragma mark UINavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController
       didShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animate
{
    // Enable the gesture again once the new controller is shown
    if ([navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        if ([navigationController.viewControllers count] == 1) {
            // Disable the interactive pop gesture in the rootViewController of navigationController
            navigationController.interactivePopGestureRecognizer.enabled = NO;
        } else {
             // Enable the interactive pop gesture
//            navigationController.interactivePopGestureRecognizer.enabled = YES;
            navigationController.interactivePopGestureRecognizer.enabled = g_PopGestureEnabled;
        }
    }
    
}


- (void)dealloc
{
    self.interactivePopGestureRecognizer.delegate = nil;
    self.delegate = nil;
}


#pragma mark - Orientations


- (BOOL)shouldAutorotate
{
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return self.topViewController.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return self.topViewController.preferredInterfaceOrientationForPresentation;
}


@end
