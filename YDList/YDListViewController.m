//
//  YDListViewController.m
//  YDListDemo
//
//  Created by 小权权 on 2020/10/29.
//  Copyright © 2020 xiaoquanquan. All rights reserved.
//

#import "YDListViewController.h"

@interface YDListViewController ()

@property (nonatomic,strong) UILabel *messageLabel;

@end

@implementation YDListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *nameLabel = [[UILabel alloc] init];
    nameLabel.text = @"我是YDList";
    nameLabel.frame = CGRectMake(15, 100, [UIScreen mainScreen].bounds.size.width, 100);
    nameLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:nameLabel];
    
    self.messageLabel = [[UILabel alloc] init];
    self.messageLabel.text = [NSString stringWithFormat:@"消息:%@",self.message];
    self.messageLabel.numberOfLines = 15;
    self.messageLabel.frame = CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 100);
    self.messageLabel.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:self.messageLabel];
    
    UIButton *callbackBtn = [[UIButton alloc] init];
    callbackBtn.frame = CGRectMake(15, 315, 150, 50);
    [callbackBtn setTitle:@"回调按钮" forState:UIControlStateNormal];
    [callbackBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [callbackBtn addTarget:self action:@selector(callbackClick) forControlEvents:UIControlEventTouchUpInside];
    callbackBtn.layer.masksToBounds = YES;
    callbackBtn.layer.cornerRadius = 25;
    callbackBtn.layer.borderColor = [UIColor blackColor].CGColor;
    callbackBtn.layer.borderWidth = 1;
    [self.view addSubview:callbackBtn];
    
}

- (void)callbackClick{
    if (self.callback) {
        self.callback(@"这是从YDList OC的回调");
    }
}

@end
