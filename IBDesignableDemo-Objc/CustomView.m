//
//  CustomView.m
//  IBDesignableDemo-Objc
//
//  Created by QianLei on 16/5/4.
//  Copyright © 2016年 ichanne. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@end

@implementation CustomView {
    UIView *_aView;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self xibSetup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self xibSetup];
    }
    return self;
}

- (void)xibSetup {
    _aView = [self loadViewFromNib];
    //让自动布局生效
    _aView.frame = self.bounds;
    //让_aView伸展到容器视图
    _aView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    [self addSubview:_aView];
}

- (UIView *)loadViewFromNib {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:bundle];
    UIView *view = [[nib instantiateWithOwner:self options:nil] firstObject];
    
    return view;
}

- (void)prepareForInterfaceBuilder {
    self.label1.text = self.label1str;
    self.label2.text = self.label2str;
}

#pragma mark - Setter方法
- (void)setLabel1str:(NSString *)label1str {
    _label1str = label1str;
    self.label1.text = _label1str;
}

- (void)setLabel2str:(NSString *)label2str {
    _label2str = label2str;
    self.label2.text = _label2str;
}

@end
