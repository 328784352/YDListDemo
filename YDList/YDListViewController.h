//
//  YDListViewController.h
//  YDListDemo
//
//  Created by 小权权 on 2020/10/29.
//  Copyright © 2020 xiaoquanquan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YDListViewController : UIViewController

typedef void (^CallbackType)(NSString *param);
@property (nonatomic,copy) CallbackType callback;
@property (nonatomic,copy) NSString *message;

@end

NS_ASSUME_NONNULL_END
