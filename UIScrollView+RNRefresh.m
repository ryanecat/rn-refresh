//
//  UIScrollView+RNRefresh.m
//  CoinWay
//
//  Created by Administrator on 2019/7/9.
//  Copyright © 2019 rain. All rights reserved.
//

#import "UIScrollView+RNRefresh.h"
#import "MJRefresh.h"
#import "MJLKHeader.h"
#import "MJLKFooter.h"

@implementation UIScrollView (RNRefresh)
- (void)addHeaderRefreshingWithTarget:(id)target action:(SEL)action {
    self.mj_header = [MJLKHeader headerWithRefreshingTarget:target refreshingAction:action];
}
- (void)addFooterRefreshingWithTarget:(id)target action:(SEL)action {
    self.mj_footer = [MJLKFooter footerWithRefreshingTarget:target refreshingAction:action];
}
- (void)beginRefreshing {
    [self.mj_header beginRefreshing];
}
- (void)endRefreshing {
    [self.mj_header endRefreshing];
    [self.mj_footer endRefreshing];
}
- (void)endRefreshingWithNoMoreData {
    [self.mj_header endRefreshing];
    [self.mj_footer endRefreshingWithNoMoreData];
}
- (void)endRefreshingWithHint:(NSString *)hint {
    
    //要停留几秒
    CGFloat stay = 1.5;
    
    [((MJLKHeader *)self.mj_header) showHint:hint];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(stay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.mj_header endRefreshing];
        [self.mj_footer endRefreshing];
    });
}
@end
