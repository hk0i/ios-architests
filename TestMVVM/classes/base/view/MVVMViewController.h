//
//  MVVMViewController.h
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import "SynchronizeProtocol.h"
#import <UIKit/UIKit.h>

@class MVVMViewModel;

@interface MVVMViewController : UIViewController <SynchronizeProtocol>
/** list of properties that this view binds */
@property (nonatomic, strong) NSMutableDictionary *properties;
@property (nonatomic, strong) NSDictionary *preparedData;
@property (nonatomic, strong) MVVMViewModel *viewModel;

/** allows the binding of a UIView's value to a property */
- (void)bindView:(UIView *)view toProperty:(NSString *)property;
- (NSDictionary *)data;
- (void)update;

@end
