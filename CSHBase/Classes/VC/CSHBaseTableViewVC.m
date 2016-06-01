//
//  CSHTableViewVC.m
//  BaseTest
//
//  Created by csh on 16/6/1.
//  Copyright © 2016年 csh. All rights reserved.
//

#import "CSHBaseTableViewVC.h"


@interface CSHBaseTableViewVC ()

@property(nonatomic, assign) UITableViewStyle tableStyle;//列表样式

@end

@implementation CSHBaseTableViewVC

#pragma mark - lifecycle
- (instancetype)initWithStyle:(UITableViewStyle)style {
    if (self = [super init]){
        self.tableStyle = style;
        self.dataArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableview];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private
- (void)showMessage:(NSString *)message {
    
}

- (void)hideHUD {
    
}

//添加下拉刷新
- (void)addDefaultHeader{
    __unsafe_unretained __typeof(self) weakSelf = self;
    self.tableview.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        //        weakSelf.dataArray = [[NSMutableArray alloc]init];
        [weakSelf tableViewPullDown];
    }];
}

//添加上拉加载
- (void)addDefaultFooter{
    if (!self.tableview.mj_footer) {
        self.tableview.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(tableViewPullUp)];
    }
}

//结束加载状态
- (void)endRefresh{
    if (self.tableview.mj_header) {
        [self.tableview.mj_header endRefreshing];
    }
    if (self.tableview.mj_footer) {
        [self.tableview.mj_footer endRefreshing];
    }
}

//移除上拉加载
- (void)HideFooter{
    if (self.tableview.mj_footer) {
        self.tableview.mj_footer = nil;
    }
}

- (void)tableViewPullUp {
    //子类需重写
}

- (void)tableViewPullDown {
    //子类需重写
}
#pragma mark - custom delegate

#pragma mark - tableviewdelegate 子类需要重写

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIder = @"DEFAULT_CELL";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIder];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIder];
    }
    return cell;
}

#pragma mark - getter
- (UITableView *)tableview{
    if (!_tableview) {
        _tableview = [[UITableView alloc]initWithFrame:self.view.frame style:self.tableStyle];
        _tableview.delegate = self;
        _tableview.dataSource = self;
    }
    return _tableview;
}

@end
