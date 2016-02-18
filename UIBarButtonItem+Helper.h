//
//  UIBarButtonItem+Helper.h
//  UIBarButtonItem类别
//
//  Created by ma c on 2/18/16.
//  Copyright © 2016 lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Helper)

#define kNormalColor [UIColor grayColor]
#define kHighLightedColor [UIColor orangeColor]
#define kFontSize 17

#pragma mark - titleCustom
- (instancetype) initWithTitle:(NSString *)title
                        target:(id)target
                        action:(SEL)action;

+ (instancetype) itemWithTitle:(NSString *)title
                        target:(id)target
                        action:(SEL)action;

#pragma mark - buttonColorCustom
- (instancetype) initWithTitle:(NSString *)title
                   normalClolr:(UIColor *)normalClolor
              highLightedColor:(UIColor *)highLightedColor
                        target:(id)target
                        action:(SEL)action;

+ (instancetype) itemWithTitle:(NSString *)title
                   normalClolr:(UIColor *)normalClolor
              highLightedColor:(UIColor *)highLightedColor
                        target:(id)target
                        action:(SEL)action;

#pragma mark - buttonImageCustom
- (instancetype) initWithNormalImageName:(NSString *)normalImageName
                    highLightedImageName:(NSString *)highLightedImageName
                                  target:(id)target
                                  action:(SEL)action;

+ (instancetype) itemWithNormalImageName:(NSString *)normalImageName
                highLightedImageName:(NSString *)highLightedImageName
                              target:(id)target
                              action:(SEL)action;


@end
