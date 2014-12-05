//
//  CPICalcViewModel.m
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import "CPICalcViewModel.h"

@implementation CPICalcViewModel

//OS * OC = NS * NC
//(OS * OC) / NC

- (NSDictionary *)preparedData
{
    float newSensitivity = 0;
    
    if (self.newCPI != 0 ) {
        newSensitivity = (self.oldCPI * self.oldSensitivity) / self.newCPI;
    }
    
    return @{@"originalSensitivity": @(self.oldSensitivity),
             @"originalCPI": @(self.oldCPI),
             @"newCPI": @(self.newCPI),
             @"newSensitivity": @(newSensitivity)};
}

- (void)synchronize:(NSDictionary *)data
{
    if (!data) {
        return;
    }
    
    self.oldCPI = [data[@"originalCPI"] intValue];
    self.newCPI = [data[@"newCPI"] intValue];
    self.oldSensitivity = [data[@"originalSensitivity"] floatValue];
}

@end
