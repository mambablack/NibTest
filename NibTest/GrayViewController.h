//
//  GrayViewController.h
//  Test
//
//  Created by wangmanco on 15/9/3.
//  Copyright (c) 2015年 wangmanco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GrayViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *actionButton;
- (IBAction)action:(UIButton *)sender;

@end
