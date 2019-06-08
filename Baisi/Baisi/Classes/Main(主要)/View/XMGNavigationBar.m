//
//  XMGNavigationBar.m
//  Baisi
//
//  Created by edz on 2019/6/7.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "XMGNavigationBar.h"
#import "XMGNavBackView.h"

@implementation XMGNavigationBar

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    for (UIView *view in self.subviews) {
        NSLog(@"类名：%@",view);
        if ([view isKindOfClass:[XMGNavBackView class]]) {
//            view.xmg_x = 0;
        }
    }
}

@end
