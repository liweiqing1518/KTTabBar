//
//  KTRootTabController.m
//  KTTabBarDemo
//
//  Created by Vincent on 2017/6/9.
//  Copyright © 2017年 李维庆. All rights reserved.
//

#import "KTRootTabController.h"
#import "KTHomePageController.h"
#import "KTDeviceController.h"
#import "KTSceneController.h"
#import "KTMySelfController.h"

@interface KTRootTabController ()

@end

@implementation KTRootTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initViewControllers];
    self.tabBar.backgroundColor = [UIColor lightGrayColor];
    
    // 设置数字样式的badge的位置和大小
    [self.tabBar setNumberBadgeMarginTop:2
                       centerMarginRight:20
                     titleHorizonalSpace:8
                      titleVerticalSpace:2];
    // 设置小圆点样式的badge的位置和大小
    [self.tabBar setDotBadgeMarginTop:5
                    centerMarginRight:15
                           sideLength:10];
    
    
    UIViewController *controller1 = self.viewControllers[0];
//    UIViewController *controller2 = self.viewControllers[1];
//    UIViewController *controller3 = self.viewControllers[2];
//    UIViewController *controller4 = self.viewControllers[3];
    controller1.yp_tabItem.badge = 0;
//    controller2.yp_tabItem.badge = 88;
//    controller3.yp_tabItem.badge = 120;
//    controller4.yp_tabItem.badgeStyle = YPTabItemBadgeStyleDot;

    // Do any additional setup after loading the view.
}
- (void)initViewControllers {
    
    KTHomePageController *controller1 = [[KTHomePageController alloc] init];
    controller1.yp_tabItemTitle = @"首页";
    controller1.yp_tabItemImage = [UIImage imageNamed:@"image_tabBar_item_normal"];
    controller1.yp_tabItemSelectedImage = [UIImage imageNamed:@"Image_tabBar_item_selected"];
    
    KTSceneController *controller2 = [[KTSceneController alloc] init];
    controller2.yp_tabItemTitle = @"设备";
    controller2.yp_tabItemImage = [UIImage imageNamed:@"image_tabBar_item_normal"];
    controller2.yp_tabItemSelectedImage = [UIImage imageNamed:@"Image_tabBar_item_selected"];
    
    KTDeviceController *controller3 = [[KTDeviceController alloc] init];
    controller3.yp_tabItemTitle = @"场景";
    controller3.yp_tabItemImage = [UIImage imageNamed:@"image_tabBar_item_normal"];
    controller3.yp_tabItemSelectedImage = [UIImage imageNamed:@"Image_tabBar_item_selected"];
    
    KTMySelfController *controller4 = [[KTMySelfController alloc] init];
    controller4.yp_tabItemTitle = @"我的";
    controller4.yp_tabItemImage = [UIImage imageNamed:@"image_tabBar_item_normal"];
    controller4.yp_tabItemSelectedImage = [UIImage imageNamed:@"Image_tabBar_item_selected"];
    
    //    ViewController *controller5 = [[ViewController alloc] init];
    //    controller5.yp_tabItemTitle = @"普通";
    //    controller5.yp_tabItemImage = [UIImage imageNamed:@"tab_me_normal"];
    //    controller5.yp_tabItemSelectedImage = [UIImage imageNamed:@"tab_me_selected"];
    
    self.viewControllers = [NSMutableArray arrayWithObjects:controller1, controller2, controller3, controller4, nil];
    
    ////    [self setContentScrollEnabledAndTapSwitchAnimated:NO];
    //
    //    // 生成一个居中显示的YPTabItem对象，即“+”号按钮
    //    YPTabItem *item = [YPTabItem buttonWithType:UIButtonTypeCustom];
    //    item.title = @"+";
    //    item.titleColor = [UIColor yellowColor];
    //    item.backgroundColor = [UIColor darkGrayColor];
    //    item.titleFont = [UIFont boldSystemFontOfSize:40];
    //
    //    // 设置其size，如果不设置，则默认为与其他item一样
    //    item.size = CGSizeMake(80, 60);
    //    // 高度大于tabBar，所以需要将此属性设置为NO
    //    self.tabBar.clipsToBounds = NO;
    //
    //    [self.tabBar setSpecialItem:item
    //             afterItemWithIndex:1
    //                     tapHandler:^(YPTabItem *item) {
    //                         NSLog(@"item--->%ld", (long)item.index);
    //                     }];
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
