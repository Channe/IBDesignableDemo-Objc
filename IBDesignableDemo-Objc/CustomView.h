//
//  CustomView.h
//  IBDesignableDemo-Objc
//
//  Created by QianLei on 16/5/4.
//  Copyright © 2016年 ichanne. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface CustomView : UIView

@property (strong,nonatomic) IBInspectable NSString *label1str;
@property (strong,nonatomic) IBInspectable NSString *label2str;

@end
