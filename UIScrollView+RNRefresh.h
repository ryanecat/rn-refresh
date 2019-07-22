//
//  UIScrollView+RNRefresh.h
//  CoinWay
//
//  Created by Administrator on 2019/7/9.
//  Copyright © 2019 rain. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UIScrollView (RNRefresh)
//下拉刷新
- (void)addHeaderRefreshingWithTarget:(id)target action:(SEL)action;
//上拉加载
- (void)addFooterRefreshingWithTarget:(id)target action:(SEL)action;
//开始刷新
- (void)beginRefreshing;
//结束刷新
- (void)endRefreshing;
//结束刷新(针对Footer)并置为无更多状态
- (void)endRefreshingWithNoMoreData;
//结束刷新(针对Header)并提示文字
- (void)endRefreshingWithHint:(NSString *)hint;
@end
NS_ASSUME_NONNULL_END
