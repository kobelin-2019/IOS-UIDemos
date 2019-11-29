//
//  PhotoViewController.m
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/11/29.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()
@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.currentPhoto = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,[[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height)];
    _currentPhoto.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:_currentPhoto];
//    
//    
//    self.ret = [[UIButton alloc] initWithFrame:CGRectMake(5, 5, 15, 5)];
//    [self.ret setBackgroundColor:[UIColor whiteColor]];
// 
//    [self.ret setTitle:@"返回" forState:UIControlStateNormal];
//    [self.ret setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [self.currentPhoto addSubview:self.ret];
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
