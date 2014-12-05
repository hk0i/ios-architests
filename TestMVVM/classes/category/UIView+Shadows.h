//
//  UIView+Shadows.h
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Shadows)
- (void)addDropShadow:(UIColor *)color
           withOffset:(CGSize)offset
               radius:(CGFloat)radius
              opacity:(CGFloat)opacity;

- (void)addDropShadow:(UIColor *)color;
@end
