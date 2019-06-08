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
