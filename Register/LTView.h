//
//  LTView.h
//  Register
//
//  Created by 张天琦 on 15/8/31.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LTView : UIView<UITextFieldDelegate>

-(instancetype)initWithFrame:(CGRect)frame title:(NSString *)title placeHoder:(NSString *)placeHoder;
@property (nonatomic)id<UITextFieldDelegate>delegate;
@property (nonatomic)NSString * text;
@property (nonatomic)BOOL secoure;
@end
