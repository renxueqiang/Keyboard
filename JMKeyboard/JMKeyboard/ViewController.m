//
//  ViewController.m
//  JMKeyboard
//
//  Created by Admin on 2016/4/14.
//  Copyright © 2020 Admin. All rights reserved.
//

#import "ViewController.h"
#import "JMKeyboard.h"

@interface ViewController ()<UIScrollViewDelegate,UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
      
        self.view.backgroundColor = [UIColor orangeColor];
        
        UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 100, self.view.bounds.size.width-20, 40)];
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.placeholder = @"请输入";
        [self.view addSubview:textField];
        
        
        JMKeyboard *keyBoard = [[JMKeyboard alloc] init];
        keyBoard.random = YES;
        textField.inputView = keyBoard;
        textField.delegate = self;
        
    }

    - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
        
        NSLog(@"正在输入");
        return YES;
    }

@end

