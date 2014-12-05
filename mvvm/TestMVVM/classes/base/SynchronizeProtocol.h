//
//  SynchronizeProtocol.h
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SynchronizeProtocol <NSObject>

- (void)synchronize:(NSDictionary *)data;

@end
