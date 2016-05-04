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
    UIView *_view;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {//self.subviews.count == 0
        [self xibSetup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        [self xibSetup];
    }
    return self;
}

- (void)xibSetup {
    _view = [self loadViewFromNib];
    
    _view.frame = self.bounds;
    [self addSubview:_view];
}

- (UIView *)loadViewFromNib {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:bundle];
    
    NSArray *xibs = [nib instantiateWithOwner:self options:nil];
    UIView *view = [xibs firstObject];
    
    return view;
}

- (void)prepareForInterfaceBuilder {
    self.label1.text = self.label1str;
    self.label2.text = self.label2str;
}

- (void)setLabel1str:(NSString *)label1str {
    _label1str = label1str;
    self.label1.text = _label1str;
}

- (void)setLabel2str:(NSString *)label2str {
    _label2str = label2str;
    self.label2.text = _label2str;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end