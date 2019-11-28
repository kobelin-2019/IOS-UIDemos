//
//  Page3ViewController.m
//  Kobe2019-UINavigationController
//
//  Created by kobelin on 2019/11/28.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "Page3ViewController.h"

@interface Page3ViewController ()

@end

@implementation Page3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor purpleColor]];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"上一页" style:UIBarButtonItemStylePlain target:self action:(@selector(goPage2))];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"上一页" style:UIBarButtonItemStylePlain target:self action:(@selector(goPage2))];

}

-(void) goPage2{
    [self.navigationController popViewControllerAnimated:YES];
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
