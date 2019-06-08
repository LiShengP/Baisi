//
//  XMGNavigationController.m
//  Baisi
//
//  Created by edz on 2019/6/7.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "XMGNavigationController.h"
#import "XMGNavigationBar.h"

@interface XMGNavigationController ()

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
    XMGNavigationBar *bar = [[XMGNavigationBar alloc]init];
    [self setValue:bar forKey:@"navigationBar"];
    
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
