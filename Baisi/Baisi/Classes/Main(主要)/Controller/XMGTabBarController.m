//
//  XMGTabBarController.m
//  Baisi
//
//  Created by edz on 2019/6/5.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "XMGTabBarController.h"
#import "XMGEssenceViewController.h"
#import "XMGNewsViewController.h"
#import "XMGFriendTrendViewController.h"
#import "XMGMeViewController.h"

@interface XMGTabBarController ()

@end

@implementation XMGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildViewController];
}

-(void)addChildViewController
{
    //首页
    XMGEssenceViewController *vc1 = [[XMGEssenceViewController alloc]init];
    vc1.title = @"首页";
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:vc1];
    [self addChildViewController:nav1];
    
    //社区
    XMGNewsViewController *vc2 = [[XMGNewsViewController alloc]init];
    vc2.title = @"社区";
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    [self addChildViewController:nav2];
    
    //关注
    XMGFriendTrendViewController *vc3 = [[XMGFriendTrendViewController alloc]init];
    vc3.title = @"关注";
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:vc3];
    [self addChildViewController:nav3];
    
    //我的
    XMGMeViewController *vc4 = [[XMGMeViewController alloc]init];
    vc4.title = @"我的";
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:vc4];
    [self addChildViewController:nav4];
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
