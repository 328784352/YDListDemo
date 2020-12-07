//
//  Target_YDList.h
//  YDListDemo
//
//  Created by 小权权 on 2020/12/7.
//  Copyright © 2020 xiaoquanquan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YDListViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface Target_YDList : NSObject

@end

@implementation Target_YDList

- (UIViewController *)Action_pushOCYDList:(NSDictionary *)params{
    YDListViewController *ydList = [[YDListViewController alloc] init];
    ydList.callback = params[@"callback"];
    ydList.message = params[@"message"];
    return ydList;
}

@end

NS_ASSUME_NONNULL_END
