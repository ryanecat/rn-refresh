//
//  MJLKHeader.m
//  CoinWay
//
//  Created by Administrator on 2019/7/9.
//  Copyright © 2019 rain. All rights reserved.
//

#import "MJLKHeader.h"

@interface MJLKHeader ()
@property (weak, nonatomic) UIImageView * logoImageView;
@property (weak, nonatomic) UILabel * hintLabel;
@end

@implementation MJLKHeader
- (void)prepare {
    [super prepare];
    
    self.mj_h = 50;
    
    UIImageView * logoImageView = [[UIImageView alloc] init];
    logoImageView.image = [UIImage imageNamed:@"loading"];
    logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:logoImageView];
    self.logoImageView = logoImageView;
    
    UILabel * hintLabel = [[UILabel alloc] init];
    hintLabel.backgroundColor = [UIColor colorWithRed:5/255.0f green:82/255.0f blue:254/255.0f alpha:1];
    hintLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
    hintLabel.textAlignment = NSTextAlignmentCenter;
    hintLabel.textColor = [UIColor whiteColor];
    [self addSubview:hintLabel];
    self.hintLabel = hintLabel;
    
    //一开始隐藏
    hintLabel.hidden = YES;
}
- (void)placeSubviews {
    [super placeSubviews];
    self.logoImageView.frame = CGRectMake((self.mj_w-65)*0.5, 0, 65, self.mj_h);
    self.hintLabel.frame = CGRectMake(0, 0, self.mj_w, self.mj_h);
}
- (void)setState:(MJRefreshState)state {
    MJRefreshCheckState;
    
    //小小的过渡动画
    if (!self.hintLabel.hidden) {
        [UIView animateWithDuration:0.2 animations:^{
            self.hintLabel.alpha = 0;
        } completion:^(BOOL finished) {
            self.hintLabel.hidden = YES;
            self.hintLabel.alpha = 1;
        }];
        return ;
    }
    
    self.hintLabel.hidden = YES;
}

#pragma mark - //
- (void)showHint:(NSString *)hint {
    self.hintLabel.text = hint;
    
    //高度一改，满满的违和感
    //self.mj_h = 36;
    //[self.scrollView setMj_offsetY:-36];
    
    self.hintLabel.text = hint;
    self.hintLabel.hidden = NO;
    
    //小小的过渡动画
    self.hintLabel.alpha = 0;
    [UIView animateWithDuration:0.2 animations:^{
        self.hintLabel.alpha = 1;
    }];
}
@end
