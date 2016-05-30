//
//  thirdViewController.m
//  TabBarControllerofdelegate
//
//  Created by Karma on 16/5/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "thirdViewController.h"

@implementation thirdViewController
- (id)init{
    if ([super init] != nil) {
        UITabBarItem *item = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
        item.badgeValue = @"3";
        self.tabBarItem = item;
        UIView *thirdView = [[UIView alloc] initWithFrame:self.view.bounds];
        thirdView.backgroundColor = [UIColor blueColor];
        [self.view addSubview:thirdView];
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
