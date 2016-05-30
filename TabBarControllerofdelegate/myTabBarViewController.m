//
//  myTabBarViewController.m
//  TabBarControllerofdelegate
//
//  Created by Karma on 16/5/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "myTabBarViewController.h"
#import "firstViewController.h"
#import "secondViewController.h"
#import "thirdViewController.h"
@interface myTabBarViewController()<UITabBarControllerDelegate>

@end
@implementation myTabBarViewController
- (id)init{
    if (self = [super init]) {
        firstViewController *firstController = [[firstViewController alloc] init];
        secondViewController *secondController = [[secondViewController alloc] init];
        thirdViewController *thirdController = [[thirdViewController alloc] init];
        thirdViewController *forthController = [[thirdViewController alloc] init];
        thirdViewController *fifteenController = [[thirdViewController alloc] init];
        thirdViewController *sixteenController = [[thirdViewController alloc] init];
        //设置UIViewController的viewController属性
        self.viewControllers = @[firstController,secondController,thirdController,forthController,fifteenController,sixteenController];
        //设置当前选中的controller
        self.selectedViewController = thirdController;
        //通过设置index来获取当前的controller
        self.selectedIndex = 1;
        self.customizableViewControllers = @[fifteenController,secondController];
        self.delegate = self;
    }
    return self;
}
//是否允许切换
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    return YES;
}
//当选中某一个item时候调用
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"didSelect");
}
//当more中edit按钮点击时候调用
- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers {
    NSLog(@"willBeginCustomizing");
}
//当more中edit页面开始退出时调用
- (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
    NSLog(@"willEndCustomizing");
}
//当more中edit页面退出以后调用
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed{
    NSLog(@"didEndCustomizing");
}
@end
