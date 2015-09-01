//
//  RegisterView.m
//  Register
//
//  Created by 张天琦 on 15/8/31.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "RegisterView.h"
#import "LTView.h"
@implementation RegisterView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addAllViews];
    }
    
    
    return self;
}
-(void)addAllViews{
    LTView * user  = [[LTView alloc] initWithFrame:CGRectMake(100, 100, 300, 35) title:@"用户名" placeHoder:@"请输入用户名"];
    [self addSubview:user ];
    
    
    LTView * password = [[LTView alloc] initWithFrame:CGRectMake(user.frame.origin.x, user.frame.origin.y + 50, user.frame.size.width, user.frame.size.height) title:@"密码" placeHoder:@"请设置密码"];
    [self addSubview:password];
    
    
    
    LTView * backAn = [[LTView alloc] initWithFrame:CGRectMake(password.frame.origin.x, password.frame.origin.y + 50, password.frame.size.width, password.frame.size.height) title:@"密保答案" placeHoder:@"请输入密保答案"];
    [self addSubview:backAn];
    
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(backAn.frame.origin.x + 50, backAn.frame.origin.y + 50, 60, 36);
    
    [button setTitle:@"确定" forState:UIControlStateNormal];
    [self addSubview:button];
    
    _users = user;
    _passwords = password;
    _bac = backAn;
    _button = button;
   
}


@end
