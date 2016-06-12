//
//  CSHTableViewVC.h
//  BaseTest
//
//  Created by csh on 16/6/1.
//  Copyright © 2016年 csh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSHThirdPartProtocol.h"
#import <MJRefresh/MJRefresh.h>

@interface CSHBaseTableViewVC : UIViewController <CSHThirdPartProtocol,UITableViewDelegate, UITableViewDataSource>

-(instancetype)initWithStyle:(UITableViewStyle)style;

//- (void)showMessage:(NSString *)message;
//- (void)hideHUD;
//
//- (void)addDefaultHeader;
//- (void)addDefaultFooter;
//- (void)HideFooter;
//- (void)endRefresh;
//
///**
// *  上拉 －>footerview 子类需重写
// */
//- (void)tableViewPullUp;
///**
// *  下拉 －>headerview 子类需重写
// */
//- (void)tableViewPullDown;
@property (nonatomic, strong) UITableView *tableview;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end
