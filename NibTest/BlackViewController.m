//
//  BlackViewController.m
//  Test
//
//  Created by wangmanco on 15/9/3.
//  Copyright (c) 2015年 wangmanco. All rights reserved.
//

#import "BlackViewController.h"

@interface BlackViewController ()

@end

@implementation BlackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    self.tilelabel.textColor = [UIColor whiteColor];
}
+ (instancetype)viewControllerFromNIB {
    return [[BlackViewController alloc] initWithNibName:NSStringFromClass([self class]) bundle:[NSBundle mainBundle]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
