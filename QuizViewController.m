//
//  QuizViewController.m
//  Quiz
//
//  Created by miaocuilin on 15/3/4.
//  Copyright (c) 2015年 mcl. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel * questionLabel;
@property (nonatomic, weak) IBOutlet UILabel * answerLabel;

@end

@implementation QuizViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //调用父类实现的初始化方法
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //创建数组对象，存储问题和答案
        self.questions = @[@"From what is cognac made?", @"What is 7+7?", @"What is the capital of Vermont?"];
        self.answers = @[@"Grapes", @"14", @"Montpelier"];
    }
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    if (self.currentQuestionIndex == self.questions.count) {
        self.currentQuestionIndex = 0;
    }
    self.questionLabel.text = self.questions[self.currentQuestionIndex];
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    self.answerLabel.text = self.answers[self.currentQuestionIndex];
}

@end
