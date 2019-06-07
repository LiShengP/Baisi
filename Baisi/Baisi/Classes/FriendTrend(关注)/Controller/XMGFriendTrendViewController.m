//
//  XMGFriendTrendViewController.m
//  Baisi
//
//  Created by edz on 2019/6/5.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "XMGFriendTrendViewController.h"

@interface XMGFriendTrendViewController ()

@end

@implementation XMGFriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XMGLog(@"%s",__func__);
    self.view.backgroundColor = [UIColor grayColor];
    [self setupNavBar];
}

-(void)setupNavBar
{
    //栈顶控制器才能设置导航条，不能用导航控制器去设置导航条
    self.navigationItem.title = @"我的关注";
    
    UIBarButtonItem *leftBtn = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] highImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] target:self action:@selector(friendsRecomment)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    
}

/// 朋友推荐
-(void)friendsRecomment
{
    XMGLog(@"%s",__func__);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)dealloc
{
    XMGLog(@"%s",__func__);
}

@end
