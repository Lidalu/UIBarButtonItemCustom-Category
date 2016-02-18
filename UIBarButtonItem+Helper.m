//
//  UIBarButtonItem+Helper.m
//  UIBarButtonItem类别
//
//  Created by ma c on 2/18/16.
//  Copyright © 2016 lu. All rights reserved.
//

#import "UIBarButtonItem+Helper.h"

@implementation UIBarButtonItem (Helper)

#pragma mark - titleCustom

- (instancetype) initWithTitle:(NSString *)title target:(id)target action:(SEL)action {
    
    return [[UIBarButtonItem alloc] initWithTitle:title normalClolr:kNormalColor highLightedColor:kHighLightedColor target:target action:action];
    
}

+ (instancetype)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action {
    
    return [[UIBarButtonItem alloc] initWithTitle:title target:target action:action];
}

#pragma mark - buttonColorCustom

- (instancetype) initWithTitle:(NSString *)title normalClolr:(UIColor *)normalClolor highLightedColor:(UIColor *)highLightedColor target:(id)target action:(SEL)action {
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:normalClolor forState:UIControlStateNormal];
    [button setTitleColor:highLightedColor forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.titleLabel.font = [UIFont systemFontOfSize:kFontSize];
    [button sizeToFit];
    
    return [self initWithCustomView:button];
    
}

+(instancetype)itemWithTitle:(NSString *)title normalClolr:(UIColor *)normalClolor highLightedColor:(UIColor *)highLightedColor target:(id)target action:(SEL)action {
    
    return [[UIBarButtonItem alloc] initWithTitle:title normalClolr:normalClolor highLightedColor:highLightedColor target:target action:action];
}

#pragma mark - buttonImageCustom

- (instancetype)initWithNormalImageName:(NSString *)normalImageName highLightedImageName:(NSString *)highLightedImageName target:(id)target action:(SEL)action {
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highLightedImageName] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.titleLabel.font = [UIFont systemFontOfSize:kFontSize];
    [button sizeToFit];
    return [self initWithCustomView:button];
}

+ (instancetype)itemWithNormalImageName:(NSString *)normalImageName highLightedImageName:(NSString *)highLightedImageName target:(id)target action:(SEL)action {
    
    return [[UIBarButtonItem alloc] initWithNormalImageName:normalImageName highLightedImageName:highLightedImageName target:target action:action];
}

@end
