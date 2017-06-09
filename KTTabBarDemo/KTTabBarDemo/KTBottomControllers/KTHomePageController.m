//
//  KTHomePageController.m
//  KTTabBarDemo
//
//  Created by Vincent on 2017/6/9.
//  Copyright © 2017年 李维庆. All rights reserved.
//

#import "KTHomePageController.h"
#import "KTLivingRoomController.h"
#import "KTBedRoomController.h"
#import "KTChildrenRoomController.h"
#import "KTBalconyController.h"
#import "KTKitchenRoomController.h"
#import "KTBookRoomController.h"
#import "KTToiletController.h"
#import "ViewController.h"

@interface KTHomePageController ()
@property (strong, nonatomic) KTLivingRoomController *livingController;
@property (strong, nonatomic) KTBedRoomController *benController;
@property (strong, nonatomic) KTChildrenRoomController *childController;
@property (strong, nonatomic) KTBalconyController *balController;
@property (strong, nonatomic) KTKitchenRoomController *kitcController;
@property (strong, nonatomic) KTBookRoomController *bookController;
@property (strong, nonatomic) KTToiletController *toilController;
@property (strong, nonatomic) ViewController *viewController;

@end

@implementation KTHomePageController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    [self setTabBarFrame:CGRectMake(0, 0, screenSize.width, 44)
        contentViewFrame:CGRectMake(0, 44, screenSize.width, screenSize.height - 40 - 50)];
    
    self.tabBar.itemTitleColor = [UIColor lightGrayColor];
    self.tabBar.itemTitleSelectedColor = [UIColor blackColor];
    self.tabBar.itemTitleFont = [UIFont systemFontOfSize:12];
    self.tabBar.itemTitleSelectedFont = [UIFont systemFontOfSize:14];
    self.tabBar.leftAndRightSpacing = 20;
    
    self.tabBar.itemFontChangeFollowContentScroll = YES;
    self.tabBar.itemSelectedBgScrollFollowContent = YES;
    self.tabBar.itemSelectedBgColor = [UIColor blackColor];
    
    [self.tabBar setItemSelectedBgInsets:UIEdgeInsetsMake(40, 15, 0, 15) tapSwitchAnimated:NO];
    [self.tabBar setScrollEnabledAndItemFitTextWidthWithSpacing:40];
    
    [self setContentScrollEnabledAndTapSwitchAnimated:NO];
    self.loadViewOfChildContollerWhileAppear = YES;
    //self.tabBar.backgroundColor = [UIColor redColor];
    [self initViewControllers];

    // Do any additional setup after loading the view.
}


- (void)initViewControllers {
    self.livingController = [[KTLivingRoomController alloc] init];
    self.livingController.yp_tabItemTitle = @"客厅";
    
    self.benController = [[KTBedRoomController alloc] init];
    self.benController.yp_tabItemTitle = @"卧室";
    
    self.childController = [[KTChildrenRoomController alloc] init];
    self.childController.yp_tabItemTitle = @"儿童房";
    
    self.balController = [[KTBalconyController alloc] init];
    self.balController.yp_tabItemTitle = @"阳台";
    
    self.kitcController = [[KTKitchenRoomController alloc] init];
    self.kitcController.yp_tabItemTitle = @"厨房";
    
    self.bookController = [[KTBookRoomController alloc] init];
    self.bookController.yp_tabItemTitle = @"书房";
    
    self.toilController = [[KTToiletController alloc] init];
    self.toilController.yp_tabItemTitle = @"卫生间";
    
    self.viewControllers = [NSMutableArray arrayWithObjects:self.livingController, self.benController, self.childController, self.balController, self.kitcController, self.bookController, self.toilController, nil];
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
