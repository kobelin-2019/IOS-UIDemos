//
//  ViewController.m
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/11/29.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "ViewController.h"
#import "myCollectionViewCell.h"
#import "PhotoViewController.h"
#define fDeviceWidth ([UIScreen mainScreen].bounds.size.width)
#define fDeviceHeight ([UIScreen mainScreen].bounds.size.height)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *imgArray = [NSArray  arrayWithObjects:@"2.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",nil];
    
     self.cellArray = [imgArray mutableCopy];
    [self.view addSubview:self.mycollectionView];
    
}

#pragma mark about CollectionView
-(UICollectionView *)mycollectionView
{
    if(_mycollectionView == nil)
    {
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
        
        _mycollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, fDeviceWidth, fDeviceHeight) collectionViewLayout:flowLayout];
        
        //定义每个UICollectionView 的大小
               flowLayout.itemSize = CGSizeMake((fDeviceWidth-20)/2-30, (fDeviceWidth-20)/2-30);
               //定义每个UICollectionViewcell 横向的间距
               flowLayout.minimumLineSpacing = 20;
               //定义每个UICollectionViewcell 纵向的间距
               flowLayout.minimumInteritemSpacing = 0;
               //定义每个UICollectionViewcell 的边距距
               flowLayout.sectionInset = UIEdgeInsetsMake(40, 30, 10, 35);//上左下右
        
        [_mycollectionView registerClass:[myCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
        [_mycollectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ReusableView"];
        
        _mycollectionView.delegate = self;
        _mycollectionView.dataSource = self;
        _mycollectionView.backgroundColor = [UIColor whiteColor];
       
        
    }
    return _mycollectionView;

}


#pragma mark - UICollectionView delegate dataSource
#pragma mark 定义展示的UICollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [_cellArray count];
}

#pragma mark 定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

#pragma mark 每个UICollectionViewCell展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"cell";
    myCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identify forIndexPath:indexPath];
    [cell sizeToFit];

    cell.imgview.image = [UIImage imageNamed:_cellArray[indexPath.item]];
    cell.text.text = [NSString stringWithFormat:@"图片%ld",indexPath.item];
    return cell;
}

#pragma mark 头部显示的内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:
                                               UICollectionElementKindSectionHeader withReuseIdentifier:@"ReusableView" forIndexPath:indexPath];
       
       return headerView;
}

#pragma mark UICollectionViewCell被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"being touched");
    PhotoViewController* vc2 = [[PhotoViewController alloc] init];
    [vc2.view setBackgroundColor:[UIColor whiteColor]];
    vc2.currentPhoto.image = [UIImage imageNamed:_cellArray[indexPath.item]];
    //[self presentViewController:vc2 animated:YES completion:nil];
    
    [self.navigationController pushViewController:vc2 animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end    
