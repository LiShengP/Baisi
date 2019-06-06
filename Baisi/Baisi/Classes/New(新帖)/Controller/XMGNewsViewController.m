//
//  XMGNewsViewController.m
//  Baisi
//
//  Created by edz on 2019/6/5.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "XMGNewsViewController.h"

@interface XMGNewsViewController ()

@end

@implementation XMGNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    [self setupNavBar];
}

-(void)setupNavBar
{
    //栈顶控制器才能设置导航条，不能用导航控制器去设置导航条
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    UIBarButtonItem *leftBtn = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] highImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(subTag)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
}

-(void)subTag
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
