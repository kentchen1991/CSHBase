//
//  CSHBaseViewModel.m
//  BaseTest
//
//  Created by csh on 16/6/1.
//  Copyright © 2016年 csh. All rights reserved.
//

#import "CSHBaseViewModel.h"

@implementation CSHBaseViewModel

- (void)showMessage:(NSString *)message {
    if ([self.delegate respondsToSelector:@selector(showMessage:)]) {
        [self.delegate showMessage:message];
    }
}

- (void)hideHUD{
    if ([self.delegate respondsToSelector:@selector(hideHUD)]) {
        [self.delegate hideHUD];
        [self endRefresh];
    }
}

- (void)addDefaultFooter{
    if ([self.delegate respondsToSelector:@selector(addDefaultFooter)]) {
        [self.delegate addDefaultFooter];
    }
}

- (void)HideFooter{
    if ([self.delegate respondsToSelector:@selector(HideFooter)]) {
        [self.delegate HideFooter];
    }
}

- (void)endRefresh{
    if ([self.delegate respondsToSelector:@selector(endRefresh)]) {
        [self.delegate endRefresh];
    }
}

#pragma 接收穿过来的block
-(void) setBlockWithReturnBlock: (XDJReturnValueBlock) returnBlock
                 WithErrorBlock: (XDJErrorCodeBlock) errorBlock
               WithFailureBlock: (XDJFailureBlock) failureBlock
{
    _returnBlock = returnBlock;
    _errorBlock = errorBlock;
    _failureBlock = failureBlock;
}

@end
