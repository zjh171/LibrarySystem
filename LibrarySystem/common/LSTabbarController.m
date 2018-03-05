//
//  LSTabbarController.m
//  LibrarySystem
//
//  Created by zhujinhui on 2018/3/4.
//  Copyright © 2018年 kyson. All rights reserved.
//

#import "LSTabbarController.h"
#import "LSNavigationController.h"
#import "LSHomeViewController.h"
#import "LSPersonViewController.h"
#import "LSPropertyViewController.h"


@interface LSTabbarController ()

@end

@implementation LSTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    LSHomeViewController *homeViewController = [[LSHomeViewController alloc] init];
    LSNavigationController *navigationController = [[LSNavigationController alloc]initWithRootViewController:homeViewController];
    
    LSPropertyViewController *propertyViewController = [[LSPropertyViewController alloc] init];
    LSNavigationController *navigationController2 = [[LSNavigationController alloc]initWithRootViewController:propertyViewController];
    
//    LSHomeViewController *homeViewController = [[LSHomeViewController alloc] init];
//    LSNavigationController *navigationController = [[LSNavigationController alloc]initWithRootViewController:homeViewController];
    
    LSPersonViewController *personViewController = [[LSPersonViewController alloc] init];
    LSNavigationController *navigationController4 = [[LSNavigationController alloc]initWithRootViewController:personViewController];
    self.viewControllers = @[navigationController,navigationController2,navigationController4];
    
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
