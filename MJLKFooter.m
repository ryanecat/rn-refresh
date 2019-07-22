//
//  MJLKFooter.m
//  CoinWay
//
//  Created by Administrator on 2019/7/9.
//  Copyright © 2019 rain. All rights reserved.
//

#import "MJLKFooter.h"

@interface MJLKFooter ()
@property (weak, nonatomic) UILabel * hintLabel;
@end

@implementation MJLKFooter
- (void)prepare {
    [super prepare];
    
    self.mj_h = 78;
    
    UILabel * hintLabel = [[UILabel alloc] init];
    hintLabel.textColor = [UIColor colorWithRed:189/255.0f green:194/255.0f blue:200/255.0f alpha:1];
    hintLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
    hintLabel.textAlignment = NSTextAlignmentCenter;
    hintLabel.text = @"- 已无更多数据 -";
    [self addSubview:hintLabel];
    self.hintLabel = hintLabel;
}
- (void)placeSubviews {
    [super placeSubviews];
    self.hintLabel.frame = CGRectMake(0, 0, self.mj_w, self.mj_h);
}
@end
