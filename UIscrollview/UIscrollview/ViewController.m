//
//  ViewController.m
//  UIscrollview
//
//  Created by 柯达 on 16/10/25.
//  Copyright © 2016年 keda. All rights reserved.
//
//
#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong)UIScrollView *scroview;
//@property (nonatomic, strong)UIScrollView * scroview; 强引用
@property(nonatomic,strong)UIImageView *uiimage;
//-(void) leftTop:(UIButton *)button;
//-(void) leftTop:(UIButton *)button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIScrollView *scroview = [[UIScrollView alloc] init];
////    self.scroview =scroview;
//    scroview.frame = CGRectMake(0,0,self.view.frame.size.width, self.view.frame.size.height);
////    scroview.contentSize = CGSizeMake(400, 400);//左右都可以滚动
////    scroview.contentSize = CGSizeMake(0, 900);//竖直滚动
//    scroview.contentSize = CGSizeMake(900, 0);
////    [scroview setContentSize:CGSizeMake(400, 400)];上行第二种写法
//    scroview.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:scroview];
    
    UIButton *button1 =[[UIButton alloc] init];
    UIButton *button2 =[[UIButton alloc] init];
    UIButton *button3 =[[UIButton alloc] init];
    UIButton *button4 =[[UIButton alloc] init];
    UIButton *button5 =[[UIButton alloc] init];
    button1.frame = CGRectMake(0, 0, 60,40);
    button2.frame = CGRectMake(0, 70, 60,40);
    button3.frame = CGRectMake(260, 70, 60,40);
    button4.frame = CGRectMake(0, 420, 60,40);
    button5.frame = CGRectMake(260, 420, 60,40);
    button1.backgroundColor = [UIColor blackColor];
    button2.backgroundColor = [UIColor yellowColor];
    button3.backgroundColor = [UIColor yellowColor];
    button4.backgroundColor = [UIColor yellowColor];
    button5.backgroundColor = [UIColor yellowColor];

    
    UIView *dan =[[UIView alloc] init];
    dan.frame = CGRectMake(0, 0, self.view.frame.size.width, 40);
    dan.backgroundColor = [UIColor blueColor];
    dan.alpha = 0.5;

   
    
    
    UIScrollView *scroview = [[UIScrollView alloc] init];
    self.scroview = scroview;
    scroview.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    scroview.backgroundColor = [UIColor blueColor];
    UIImageView *uiimage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"136"]];
    self.uiimage = uiimage;
    scroview.contentSize = CGSizeMake(uiimage.frame.size.width, uiimage.frame.size.height);
    
    scroview.contentOffset = CGPointMake(0,0);
    scroview.contentInset = UIEdgeInsetsMake(40, 0, 0, 0);
    
    [self.view addSubview:scroview];
    [scroview addSubview:uiimage];
    [scroview addSubview:button1];
    [self.view addSubview:button2];
    [self.view addSubview:button3];
    [self.view addSubview:button4];
    [self.view addSubview:button5];
    [self.view addSubview:dan];
    
    [addtarget jiantin:self.view];
    
    [button2 addTarget:nil action:@selector(leftTop:) forControlEvents:UIControlEventTouchUpInside ];
    
    [button3 addTarget:nil action:@selector(rightTop:) forControlEvents:UIControlEventTouchUpInside ];
    
    
    [button4 addTarget:nil action:@selector(leftDown:) forControlEvents:UIControlEventTouchUpInside ];
    
    [button5 addTarget:nil action:@selector(rightDown:) forControlEvents:UIControlEventTouchUpInside ];
    
    

    
    }



-(void) leftTop:(UIButton *)button{
    
    self.scroview.contentOffset = CGPointMake(0, 0);
}



-(void) leftDown:(UIButton *)button{
    
    self.scroview.contentOffset = CGPointMake(0, self.uiimage.frame.size.height - self.scroview.frame.size.height);
    NSLog(@"%@",button);
}


-(void) rightTop:(UIButton *)button{
    
    self.scroview.contentOffset = CGPointMake(_uiimage.frame.size.width - _scroview.frame.size.width, 0);
    NSLog(@"%@",button);
}


-(void) rightDown:(UIButton *)button{
    
    self.scroview.contentOffset = CGPointMake(_uiimage.frame.size.width - _scroview.frame.size.width, self.uiimage.frame.size.height - self.scroview.frame.size.height);
    NSLog(@"%@",button);
}




@end
