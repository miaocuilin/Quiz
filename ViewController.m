//
//  ViewController.m
//  Quiz
//
//  Created by miaocuilin on 15/3/4.
//  Copyright (c) 2015年 mcl. All rights reserved.
//

#import "ViewController.h"
#import "QuizViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self jump];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.frame = CGRectMake(100, 100, 100, 100);
//    [btn setTitle:@"press" forState:UIControlStateNormal];
//    btn.backgroundColor = [UIColor purpleColor];
//    [self.view addSubview:btn];
//    [btn addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
}

-(void)jump
{
    QuizViewController * qvc = [[QuizViewController alloc] init];
    [self presentViewController:qvc animated:NO completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
