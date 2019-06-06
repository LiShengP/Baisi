//
//  UIBarButtonItem+item.m
//  Baisi
//
//  Created by edz on 2019/6/6.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "UIBarButtonItem+item.h"

@implementation UIBarButtonItem (item)

+(instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highImage forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    UIView *backView = [[UIView alloc]initWithFrame:btn.bounds];
    [backView addSubview:btn];
    
    return [[UIBarButtonItem alloc]initWithCustomView:backView];
}

@end
