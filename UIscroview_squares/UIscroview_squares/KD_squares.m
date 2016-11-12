//
//  KD_squares.m
//  UIscroview_squares
//
//  Created by 柯达 on 16/10/31.
//  Copyright © 2016年 keda. All rights reserved.
//

#import "KD_squares.h"


@interface KD_squares ()
@property (nonatomic, strong)UIView *view;
@property (weak, nonatomic) IBOutlet UIImageView *shopImage;
@property (weak, nonatomic) IBOutlet UILabel *shopLable;


@end


@implementation KD_squares
//初始化
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
//        NSLog(@"%@",self);
    }
    return self;
}


-(void)awakeFromNib{
    //自定义初始化
    
      [self stat];
    
}



-(void)stat{
    self.shopImage.frame = CGRectMake(0, 0, 70, 70);
    self.shopImage.backgroundColor = [UIColor blackColor];
    self.shopLable.frame = CGRectMake(0, 70, 20, 20);
    self.shopLable.backgroundColor = [UIColor redColor];
    
//    NSLog(@"%@",self.shopLable);
    
   
}



+(instancetype)quanView{

//这一句代码自动执行- (instancetype)initWithCoder:(NSCoder *)coder和-(void)awakeFromNib两句代码
    
    
  KD_squares * quanView =[[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
    
    
    return quanView;
   
    }







@end
