//
//  XMGEssenceViewController.m
//  Baisi
//
//  Created by edz on 2019/6/5.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "XMGEssenceViewController.h"
#import "UIBarButtonItem+item.h"

@interface XMGEssenceViewController ()

@end

@implementation XMGEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    //栈顶控制器才能设置导航条，不能用导航控制器去设置导航条
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    UIBarButtonItem *leftBtn = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] highImage:[UIImage imageNamed:@"nav_item_game_click_icon"] target:self action:@selector(gameClick)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem *rigthBtn = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"navigationButtonRandom"] highImage:[UIImage imageNamed:@"navigationButtonRandomClick"] target:self action:@selector(rigtClick)];
    self.navigationItem.rightBarButtonItem = rigthBtn;
    
}

-(void)gameClick
{
    NSLog(@"%s",__func__);
}

-(void)rigtClick
{
    NSLog(@"%s",__func__);
}

-(void)dealloc
{
    NSLog(@"%s",__func__);
}

@end
