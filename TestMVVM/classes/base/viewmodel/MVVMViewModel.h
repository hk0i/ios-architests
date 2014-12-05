//
//  MVVMViewModel.h
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SynchronizeProtocol.h"

@interface MVVMViewModel : NSObject <SynchronizeProtocol>
- (NSDictionary *)preparedData;
@end
