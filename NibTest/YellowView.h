//
//  YellowView.h
//  Test
//
//  Created by wangmanco on 15/9/3.
//  Copyright (c) 2015年 wangmanco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YellowView : UIView
@property (weak, nonatomic) IBOutlet UILabel *titleLable;
+ (instancetype)viewFromNIB;
@end
