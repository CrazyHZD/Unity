//
//  ViewController.m
//  UIscroview_squares
//
//  Created by 柯达 on 16/10/31.
//  Copyright © 2016年 keda. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) UIView *shopUIview;
@property (nonatomic, strong) NSNumber * contenOffsetHight;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *shopUIview = [[UIView alloc] init];
    
    self.shopUIview =shopUIview;
    [self.scrollView addSubview:shopUIview];
    
    //监听按钮点击事件
    [self.button1 addTarget:nil action:@selector(addSubview) forControlEvents:UIControlEventTouchUpInside];
    
  
    
    
//    NSLog(@"%@1",self.view);

}

-(void)contenOffsetHightcode{
    self.scrollView.contentSize = CGSizeMake(0, [self.contenOffsetHight floatValue]);
//    self.scrollView.contentOffset = CGPointMake(0, 0);
    //
    NSLog(@"%f",[self.contenOffsetHight floatValue]);
}

-(void)addSubview{
    
    KD_squares *shopView = [KD_squares quanView];
    
    int col = 3;
    int index = self.shopUIview.subviews.count;
    int mage = 20;
    
    
    CGFloat x = (index % col) * (shopView.frame.size.width + (self.scrollView.frame.size.width - col * shopView.frame.size.width)/(col - 1));
    
    CGFloat y = (index / col) * (shopView.frame.size.height + mage);
    
    shopView.frame = CGRectMake(x, y, shopView.frame.size.width, shopView.frame.size.height);
//    NSLog(@"%f",y);
    [self.shopUIview addSubview:shopView];
    
    self.contenOffsetHight = [NSNumber numberWithFloat:y + shopView.frame.size.height];
    [self contenOffsetHightcode];

}

@end
