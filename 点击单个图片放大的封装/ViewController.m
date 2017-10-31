//
//  ViewController.m
//  点击单个图片放大的封装
//
//  Created by 胡高广 on 2017/10/31.
//  Copyright © 2017年 jinshuaier. All rights reserved.
//

#import "ViewController.h"
#import "HggBigImage.h"

@interface ViewController ()
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView = [[UIImageView alloc] init];
    self.imageView.image = [UIImage imageNamed:@"iconMM.png"];
    self.imageView.frame = CGRectMake(100, 100, 100, 100);
    self.imageView.userInteractionEnabled = YES;
    [self.view addSubview:self.imageView];
    
    UITapGestureRecognizer *tap  = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(magnifyImage)];
    
    [self.imageView addGestureRecognizer:tap];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)magnifyImage
{
    NSLog(@"局部放大");
    [HggBigImage showImage:self.imageView];//调用方法
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
