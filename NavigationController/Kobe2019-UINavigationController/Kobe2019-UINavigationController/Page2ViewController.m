//
//  Page2ViewController.m
//  Kobe2019-UINavigationController
//
//  Created by kobelin on 2019/11/28.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "Page2ViewController.h"
#import "Page3ViewController.h"
@interface Page2ViewController ()

@end

@implementation Page2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor yellowColor]];
   self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:(@selector(goPage3))];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"上一页" style:UIBarButtonItemStylePlain target:self action:(@selector(goPage1))];

}
-(void)goPage1{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)goPage3{
    Page3ViewController *p3 = [[Page3ViewController alloc] init];
    [self.navigationController pushViewController:p3 animated:YES];
    
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
