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
#import "XMGPublishViewController.h"
#import "UIImage+renderImage.h"
#import "UITabBarItem+fontAndColor.h"

@interface XMGTabBarController ()

@property (nonatomic,strong) UIButton *plusButton;

@end

@implementation XMGTabBarController

+(void)initialize
{
    //使用apperance只设置一次即可
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UITabBarItem *tabbarItem = [UITabBarItem appearance];
        NSMutableDictionary *attr = [NSMutableDictionary dictionary];
        attr[NSFontAttributeName] = [UIFont systemFontOfSize:12.0];
        attr[NSForegroundColorAttributeName] = [UIColor blackColor];
        [tabbarItem setTitleTextAttributes:attr forState:UIControlStateNormal];
    });
}

-(UIButton *)plusButton
{
    if (_plusButton == nil) {
        //添加中间加号按钮
        _plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_plusButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [_plusButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [_plusButton sizeToFit];
        [self.tabBar addSubview:_plusButton];
    }
    return _plusButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.plusButton.center = CGPointMake(self.tabBar.bounds.size.width * 0.5, self.tabBar.bounds.size.height * 0.5);
    
    [self addAllChildViewController];
    [self setupAllTitleButton];
}

-(void)addAllChildViewController
{
    //首页
    XMGEssenceViewController *vc1 = [[XMGEssenceViewController alloc]init];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:vc1];
    [self addChildViewController:nav1];
    
    //社区
    XMGNewsViewController *vc2 = [[XMGNewsViewController alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:vc2];
    [self addChildViewController:nav2];
    
    //发布
    UIViewController *vc3 = [[UIViewController alloc]init];
    [self addChildViewController:vc3];
    
    //关注
    XMGFriendTrendViewController *vc4 = [[XMGFriendTrendViewController alloc]init];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:vc4];
    [self addChildViewController:nav4];
    
    //我的
    XMGMeViewController *vc5 = [[XMGMeViewController alloc]init];
    UINavigationController *nav5 = [[UINavigationController alloc]initWithRootViewController:vc5];
    [self addChildViewController:nav5];
}

-(void)setupAllTitleButton
{
    UINavigationController *nav1 = self.childViewControllers[0];
    nav1.tabBarItem.title = @"首页";
    nav1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    nav1.tabBarItem.selectedImage = [UIImage imageWithRenderImageName:@"tabBar_essence_click_icon"];
    
    //设置tabbar标题颜色和字体
//    [nav1.tabBarItem setupItemWithfont:[UIFont systemFontOfSize:12.0] color:[UIColor blackColor]];
    
    UINavigationController *nav2 = self.childViewControllers[1];
    nav2.tabBarItem.title = @"社区";
    nav2.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    nav2.tabBarItem.selectedImage = [UIImage imageWithRenderImageName:@"tabBar_new_click_icon"];
    
    // 中间按钮使用自定义按钮,设置中间部分不可点击
    UIViewController *vc = self.childViewControllers[2];
    vc.tabBarItem.enabled = NO;
//    vc.tabBarItem.image = [UIImage imageWithRenderImageName:@"tabBar_publish_icon"];
//    vc.tabBarItem.selectedImage = [UIImage imageWithRenderImageName:@"tabBar_publish_click_icon"];
//    vc.tabBarItem.imageInsets = UIEdgeInsetsMake(7, 0, -7, 0);
    
    UINavigationController *nav4 = self.childViewControllers[3];
    nav4.tabBarItem.title = @"关注";
    nav4.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    nav4.tabBarItem.selectedImage = [UIImage imageWithRenderImageName:@"tabBar_friendTrends_click_icon"];
    
    UINavigationController *nav5 = self.childViewControllers[4];
    nav5.tabBarItem.title = @"我的";
    nav5.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    nav5.tabBarItem.selectedImage = [UIImage imageWithRenderImageName:@"tabBar_me_click_icon"];
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
