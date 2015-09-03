//
//  UIViewController+NIB.m
//  Test
//
//  Created by wangmanco on 15/9/3.
//  Copyright (c) 2015年 wangmanco. All rights reserved.
//

#import "UIViewController+NIB.h"

@implementation UIViewController (NIB)
+ (instancetype)loadFromNib {
    // [self class]会由调用的类决定
    Class controllerClass = [self class];
    NSLog(@"class = %@", controllerClass);
    return [[controllerClass alloc] initWithNibName:NSStringFromClass(controllerClass) bundle:[NSBundle mainBundle]];
}
@end
