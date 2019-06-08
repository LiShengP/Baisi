//
//  XMGNavigationController.m
//  Baisi
//
//  Created by edz on 2019/6/7.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "XMGNavigationController.h"
#import "XMGNavigationBar.h"
#import "XMGNavBackView.h"

@interface XMGNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation XMGNavigationController

+(void)initialize
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // 获取全局的navigationBar， 使用到当前类的全局
        UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[self]];
        
        NSMutableDictionary *attr = [NSMutableDictionary dictionary];
        attr[NSForegroundColorAttributeName] = [UIColor blackColor];
        attr[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20.0];
        //通过Bar，设置导航栏文字
        bar.titleTextAttributes = attr;
        [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //替换为自定义的navigationBar
    XMGNavigationBar *bar = [[XMGNavigationBar alloc]initWithFrame:self.navigationBar.frame];
    [self setValue:bar forKey:@"navigationBar"];
    
    //禁止掉系统左滑功能
    self.interactivePopGestureRecognizer.enabled = NO;
    //通过打印interactivePopGestureRecognizer找到系统的target 和action
    XMGLog(@"%@",self.interactivePopGestureRecognizer);
    // 自定义手势，实现全局的左滑返回功能
    id target = self.interactivePopGestureRecognizer.delegate;
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:target action:@selector(handleNavigationTransition:)];
    panGesture.delegate = self;
    [self.view addGestureRecognizer:panGesture];
    
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    XMGLog(@"%ld",self.childViewControllers.count);
    //只有非栈顶控制器，再去自定义返回按钮
    if (self.childViewControllers.count > 0) {
        
        //使用自定义的返回按钮，根据类型调整返回按钮的位置
        XMGNavBackView *backView = [XMGNavBackView backViewWithTitle:@"返回" norImage:[UIImage imageNamed:@"navigationButtonReturn"] highImage:[UIImage imageNamed:@"navigationButtonReturnClick"] target:self action:@selector(back)];
        
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithCustomView:backView];
        
        viewController.navigationItem.leftBarButtonItem = backItem;
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}

#pragma mark - UIGestureRecognizerDelegate
//导航控制器左滑功能
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
//    根控制器不需要左滑
    return self.childViewControllers.count > 1;
}


@end
