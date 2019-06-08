//
//  XMGNavBackView.m
//  Baisi
//
//  Created by edz on 2019/6/7.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "XMGNavBackView.h"

@implementation XMGNavBackView

+(instancetype)backViewWithTitle:(NSString *)title norImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:highImage forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    button.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    XMGNavBackView *backView = [[self alloc]initWithFrame:button.bounds];
    
    [backView addSubview:button];
    return backView;
}

@end
