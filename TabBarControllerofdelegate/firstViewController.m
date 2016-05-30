//
//  firstViewController.m
//  TabBarControllerofdelegate
//
//  Created by Karma on 16/5/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "firstViewController.h"

@implementation firstViewController
- (id)init{
    if ([super init] != nil) {
        UITabBarItem *item = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1];
        item.badgeValue = @"1";
        self.tabBarItem = item;
        UIView *firstView = [[UIView alloc] initWithFrame:self.view.bounds];
        firstView.backgroundColor = [UIColor redColor];
        [self.view addSubview:firstView];
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
