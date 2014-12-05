//
//  CPICalcViewModel.h
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import "MVVMViewModel.h"

@interface CPICalcViewModel : MVVMViewModel
@property (nonatomic) UInt32 oldCPI;
@property (nonatomic) float oldSensitivity;
@property (nonatomic) UInt32 newCPI;
@property (nonatomic) float newSensitivity;

@end
