//
//  CSHTableCell.m
//  BaseTest
//
//  Created by csh on 16/6/1.
//  Copyright © 2016年 csh. All rights reserved.
//

#import "CSHTableCell.h"

@implementation CSHTableCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self cellSetup];
        
        [self buildSubViews];
    }
    
    return self;
}

- (void)awakeFromNib {
    [self cellSetup];
    
    [self buildSubViews];
}

- (void)cellSetup {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)buildSubViews {
    
}

- (void)loadData {
    
}


@end
