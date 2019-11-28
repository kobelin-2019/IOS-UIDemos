//
//  SecondPageViewController.m
//  Kobe2019-TabBarController
//
//  Created by kobelin on 2019/11/28.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "SecondPageViewController.h"

@interface SecondPageViewController ()

@end

@implementation SecondPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.lable2 = [[UILabel alloc] initWithFrame:CGRectMake(150, 100, 100, 50)];
    [self.lable2 setText:@"SecondPage"];
    self.lable2.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:self.lable2];
    // Do any additional setup after loading the view.
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
