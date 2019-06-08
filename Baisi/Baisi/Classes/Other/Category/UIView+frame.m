//
//  UIView+frame.m
//  Baisi
//
//  Created by edz on 2019/6/7.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

-(CGFloat)xmg_x
{
    return self.frame.origin.x;
}
-(void)setXmg_x:(CGFloat)xmg_x
{
    CGRect frame = self.frame;
    frame.origin.x = xmg_x;
    self.frame = frame;
}

-(CGFloat)xmg_y
{
    return self.frame.origin.y;
}

-(void)setXmg_y:(CGFloat)xmg_y
{
    CGRect frame = self.frame;
    frame.origin.y = xmg_y;
    self.frame = frame;
}

-(CGFloat)xmg_width
{
    return self.frame.size.width;
}
-(void)setXmg_width:(CGFloat)xmg_width
{
    CGRect frame = self.frame;
    frame.size.width = xmg_width;
    self.frame = frame;
}
-(CGFloat)xmg_height
{
    return self.frame.size.height;
}
-(void)setXmg_height:(CGFloat)xmg_height
{
    CGRect frame = self.frame;
    frame.size.height = xmg_height;
    self.frame = frame;
}

@end
