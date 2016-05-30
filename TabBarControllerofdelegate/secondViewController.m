//
//  secondViewController.m
//  TabBarControllerofdelegate
//
//  Created by Karma on 16/5/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "secondViewController.h"

@implementation secondViewController
- (id)init{
    if ([super init] != nil) {
        UITabBarItem *item = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1];
        item.badgeValue = @"2";
        self.tabBarItem = item;
        UIView *secondView = [[UIView alloc] initWithFrame:self.view.bounds];
        secondView.backgroundColor = [UIColor greenColor];
        [self.view addSubview:secondView];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
