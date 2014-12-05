//
//  MVVMViewModel.m
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import "MVVMViewModel.h"

@implementation MVVMViewModel

- (void)synchronize:(NSDictionary *)data
{
    [NSException raise:NSInternalInconsistencyException
                format:@"You must manually override %@ in a subclass",
     NSStringFromSelector(_cmd)];
}

- (NSDictionary *)preparedData
{
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
                                 userInfo:nil];
}

@end
