//
//  UIBarButtonItem+item.h
//  Baisi
//
//  Created by edz on 2019/6/6.
//  Copyright © 2019年 com.kuaijianzhiliao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (item)

+(instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;

+(instancetype)itemWithImage:(UIImage *)image selectImage:(UIImage *)selectImage target:(id)target action:(SEL)action;

@end

NS_ASSUME_NONNULL_END
