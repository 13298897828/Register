//
//  LTView.m
//  Register
//
//  Created by 张天琦 on 15/8/31.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "LTView.h"
@interface LTView()

@property UILabel * label;
@property UITextField * textfield;
@end
@implementation LTView
-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,frame.size.width * 0.3  , frame.size.height)];
        [self addSubview:_label];
        _textfield = [[UITextField alloc]initWithFrame:CGRectMake(_label.frame.size.width, 0, frame.size.width * 0.7, frame.size.height)];
        [self addSubview:_textfield];
    }
    return self;
    
}

-(instancetype)initWithFrame:(CGRect)frame title:(NSString *)title placeHoder:(NSString *)placeHoder{
    
    
    if (self = [self initWithFrame:frame]) {
        _label.text = title;
        _textfield.placeholder = placeHoder;
    }
    return self;
}
-(void)setDelegate:(id<UITextFieldDelegate>)delegate{
    
    self.textfield.delegate = delegate;
    
}
-(void)setText:(NSString *)text{
    
    self.textfield.text = text;
    
}
-(NSString *)text {
    
    return self.textfield.text;
    
}
-(void)setSecoure:(BOOL)secoure{
    
    
    self.textfield.secureTextEntry = secoure;
}

@end
