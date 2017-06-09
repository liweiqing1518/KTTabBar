//
//  KTToiletController.m
//  KTTabBarDemo
//
//  Created by Vincent on 2017/6/9.
//  Copyright © 2017年 李维庆. All rights reserved.
//

#import "KTToiletController.h"

@interface KTToiletController ()

@end

@implementation KTToiletController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 200)/2, 200, 200, 40)];
    label.text = @"卫生间数据页面";
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:20.0];
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];
    // Do any additional setup after loading the view.
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
