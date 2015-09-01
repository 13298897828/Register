//
//  RegiserViewController.m
//  Register
//
//  Created by 张天琦 on 15/8/31.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "RegiserViewController.h"
#import "RegisterView.h"
#import "LTView.h"
@interface RegiserViewController ()<UITextFieldDelegate>
@property(nonatomic,strong) RegisterView * registerView;
@end

@implementation RegiserViewController
-(void)loadView{
    
    self.registerView = [[RegisterView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view = self.registerView;
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.registerView.users.delegate = self;
    self.registerView.passwords.delegate = self;
    self.registerView.bac.delegate = self;
    [self.registerView.button addTarget:self action:@selector(gogogo:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}

-(void)gogogo:(UIButton *)sender{
    
    NSLog(@"%@",self.registerView.users.text);
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
