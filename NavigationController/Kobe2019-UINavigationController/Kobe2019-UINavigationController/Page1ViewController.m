//
//  Page1ViewController.m
//  Kobe2019-UINavigationController
//
//  Created by kobelin on 2019/11/28.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "Page1ViewController.h"
#import "Page2ViewController.h"
@interface Page1ViewController ()

@end

@implementation Page1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor grayColor]];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:(@selector(goPage2))];
    // Do any additional setup after loading the view.
}
-(void)goPage2{
    Page2ViewController* p2 = [[Page2ViewController alloc]  init];
    
    [self.navigationController pushViewController:p2 animated:(YES)];

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
