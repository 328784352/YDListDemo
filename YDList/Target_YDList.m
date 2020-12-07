//
//  Target_YDList.m
//  YDListDemo
//
//  Created by 小权权 on 2020/12/7.
//  Copyright © 2020 xiaoquanquan. All rights reserved.
//

#import "Target_YDList.h"

@implementation Target_YDList
- (UIViewController *)Action_pushOCYDList:(NSDictionary *)params{
    YDListViewController *ydList = [[YDListViewController alloc] init];
    ydList.callback = params[@"callback"];
    ydList.message = params[@"message"];
    return ydList;
}


@end
