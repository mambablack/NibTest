//
//  ViewController.m
//  Test
//
//  Created by wangmanco on 15/9/3.
//  Copyright (c) 2015年 wangmanco. All rights reserved.
//

#import "ViewController.h"
#import "RedViewOwner.h"
#import "YellowView.h"
#import "BlackViewController.h"
#import "GrayViewController.h"
#import "UIViewController+NIB.h"

@interface ViewController ()

@property (strong, nonatomic)UIView *blueView;
@property (strong, nonatomic) IBOutlet UIView *greenView;
@property (strong, nonatomic) RedViewOwner *redViewOwner;
@property (strong, nonatomic) YellowView *yellowView;
@property (strong, nonatomic) BlackViewController *blackViewController;
@property (strong, nonatomic) GrayViewController *grayViewController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadBlueViewFromXIB];
    [self loadGreenViewFromXIB];
    [self loadRedViewFromXIB];
    [self loadYellowViewFromXIB];
    [self loadBlackViewFromXIB];
    [self loadGrayViewFromXIB];
    
}
- (void)loadBlueViewFromXIB {
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"BlueView" owner:nil options:nil];
    self.blueView = views[0];
    CGRect rect = _blueView.frame;
    rect.origin.x += 37.5f;
    rect.origin.y += 80.0f;
    _blueView.frame = rect;
    [self.view addSubview:_blueView];
    
}
- (void)loadGreenViewFromXIB {
    [[NSBundle mainBundle] loadNibNamed:@"GreenView" owner:self options:nil];
    CGRect rect = _greenView.frame;
    rect.origin.x = _blueView.frame.origin.x;
    rect.origin.y = _blueView.frame.origin.y + 80.0f;
    _greenView.frame = rect;
    [self.view addSubview:_greenView];
}
- (void)loadRedViewFromXIB {
    self.redViewOwner = [RedViewOwner new];
    [[NSBundle mainBundle] loadNibNamed:@"RedView" owner:_redViewOwner options:nil];
    UIView *redView = _redViewOwner.redView;
    CGRect rect = redView.frame;
    rect.origin.x = _greenView.frame.origin.x;
    rect.origin.y = _greenView.frame.origin.y + 80.0f;
    redView.frame = rect;
    [self.view addSubview:redView];
    
}
- (void)loadYellowViewFromXIB {
    self.yellowView = [YellowView viewFromNIB];
    CGRect rect = _yellowView.frame;
    UIView *redView = _redViewOwner.redView;
    rect.origin.x = redView.frame.origin.x;
    rect.origin.y = redView.frame.origin.y + 80.0f;
    _yellowView.frame = rect;
    [self.view addSubview:_yellowView];
}
- (void)loadBlackViewFromXIB {
    self.blackViewController = [[BlackViewController alloc] initWithNibName:@"BlackView" bundle:[NSBundle mainBundle]];
    
    // 或使用Conveniece Method，但要求xib文件名和View Controller类名一致
    // self.blackViewController = [BlackViewController viewControllerFromNIB];
    
    UIView *blackView = _blackViewController.view;
    CGRect rect = blackView.frame;
    rect.origin.x = _yellowView.frame.origin.x;
    rect.origin.y = _yellowView.frame.origin.y + 80.0f;
    blackView.frame = rect;
    [self.view addSubview:blackView];
}
- (void)loadGrayViewFromXIB {
    self.grayViewController = [GrayViewController loadFromNib];
    
    UIView *grayView = _grayViewController.view;
    UIView *blackView = _blackViewController.view;
    CGRect rect = grayView.frame;
    rect.origin.x = blackView.frame.origin.x;
    rect.origin.y = blackView.frame.origin.y + 80.0f;
    grayView.frame = rect;
    [self.view addSubview:grayView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
