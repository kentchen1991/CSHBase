//
//  CBNavigationController.h
//  H5Competition
//
//  Created by apple on 15-6-9.
//  Copyright (c) 2015年 apple. All rights reserved.
//

// Interactive Pop Gesture With Custom Back Button
// 自定义导航栏左边按钮时，没法滑动界面返回，这个控制器就是为了解决这个问题
// 屏幕的旋转方向支持从子控制器中获取


#import <UIKit/UIKit.h>

@interface CBNavigationController : UINavigationController <UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@end
