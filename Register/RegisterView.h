//
//  RegisterView.h
//  Register
//
//  Created by 张天琦 on 15/8/31.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  LTView;
@interface RegisterView : UIView
@property (nonatomic,strong)LTView *users;
@property (nonatomic,strong)LTView * passwords;
@property (nonatomic,strong)LTView * bac;
@property (nonatomic,strong)UIButton * button;
@end
