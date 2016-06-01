//
//  CSHBaseViewModel.h
//  BaseTest
//
//  Created by csh on 16/6/1.
//  Copyright © 2016年 csh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSHThirdPartProtocol.h"

typedef void (^XDJReturnValueBlock) ();//id returnValue
typedef void (^XDJErrorCodeBlock) (id errorCode);
typedef void (^XDJFailureBlock)();
typedef void (^XDJNetWorkBlock)(BOOL netConnetState);

@interface CSHBaseViewModel : NSObject <CSHThirdPartProtocol>

@property (nonatomic, weak) id <CSHThirdPartProtocol> delegate;
@property (strong, nonatomic) XDJReturnValueBlock returnBlock;
@property (strong, nonatomic) XDJErrorCodeBlock errorBlock;
@property (strong, nonatomic) XDJFailureBlock failureBlock;

// 传入交互的Block块
- (void) setBlockWithReturnBlock: (XDJReturnValueBlock) returnBlock
                  WithErrorBlock: (XDJErrorCodeBlock) errorBlock
                WithFailureBlock: (XDJFailureBlock) failureBlock;

@end
