//
//  UITabBarItem+fontAndColor.m
//  Baisi
//
//  Created by edz on 2019/6/5.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import "UITabBarItem+fontAndColor.h"

@implementation UITabBarItem (fontAndColor)
-(void)setupItemWithfont:(UIFont *)font color:(UIColor *)color
{
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSFontAttributeName] = font;
    attr[NSForegroundColorAttributeName] = color;
    [self setTitleTextAttributes:attr forState:UIControlStateNormal];
}
@end
