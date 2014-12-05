//
//  UIView+Shadows.m
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import "UIView+Shadows.h"

@implementation UIView (Shadows)

const CGSize DS_DEFAULT_OFFSET = {0, 2};
const CGFloat DS_DEFAULT_RADIUS = 1.0f;
const CGFloat DS_DEFAULT_OPACITY = 0.8f;

- (void)addDropShadow:(UIColor *)color
           withOffset:(CGSize)offset
               radius:(CGFloat)radius
              opacity:(CGFloat)opacity
{
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOffset = offset;
    self.layer.shadowRadius = radius;
    self.layer.shadowOpacity = opacity;
}

- (void)addDropShadow:(UIColor *)color
{
    [self addDropShadow:color
             withOffset:DS_DEFAULT_OFFSET
                 radius:DS_DEFAULT_RADIUS
                opacity:DS_DEFAULT_OPACITY];
}

@end
