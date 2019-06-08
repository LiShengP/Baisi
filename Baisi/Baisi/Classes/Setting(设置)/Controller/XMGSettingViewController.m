//
//  XMGSettingViewController.m
//  Baisi
//
//  Created by edz on 2019/6/7.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "XMGSettingViewController.h"
#import "XMGNavBackView.h"

@interface XMGSettingViewController ()

@end

@implementation XMGSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"%@",self.navigationController.navigationBar);
    //使用自定义的返回按钮，根据类型调整返回按钮的位置
    XMGNavBackView *backView = [XMGNavBackView backViewWithTitle:@"返回" norImage:[UIImage imageNamed:@"navigationButtonReturn"] highImage:[UIImage imageNamed:@"navigationButtonReturnClick"] target:self action:@selector(back)];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithCustomView:backView];
    
    UIBarButtonItem *space = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    // 调整左侧按钮间距
    space.width = -10;
    self.navigationItem.leftBarButtonItems = @[space,backItem];
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
