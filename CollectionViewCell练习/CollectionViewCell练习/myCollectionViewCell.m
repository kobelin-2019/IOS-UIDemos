//
//  myCollectionViewCell.m
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/11/29.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "myCollectionViewCell.h"

@implementation myCollectionViewCell
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self){
        self.backgroundColor = [UIColor blackColor];
        self.imgview = [[UIImageView alloc] initWithFrame:CGRectMake(0,0 ,CGRectGetWidth(self.frame),CGRectGetHeight(self.frame))];
        [self addSubview:_imgview];
        
        self.text = [[UILabel alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(self.imgview.frame),CGRectGetWidth(self.frame)-10,20)];
        self.text.backgroundColor = [UIColor whiteColor];
        self.text.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.text];
                                                                        
        
    }
    return self;
}

@end
