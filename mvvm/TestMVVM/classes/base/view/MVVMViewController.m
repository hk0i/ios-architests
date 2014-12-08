//
//  MVVMViewController.m
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMViewModel.h"

@interface MVVMViewController ()

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bindings = [NSMutableDictionary new];
    self.viewModel = [MVVMViewModel new];
    
    //set up ui components and styles.
    [self setupUi];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupUi
{
    [self subclassException:_cmd];
}

- (void)subclassException:(SEL)selector {
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(selector)];
}

- (void)bindView:(UIView *)view toProperty:(NSString *)property
{
    if (property.length && view) {
        self.bindings[property] = view;
    }
}

- (void)synchronize:(NSDictionary *)data
{
    NSArray *keys = self.bindings.allKeys;
    for (int i = 0; i < keys.count; ++i) {
        [self updateUiElement:self.bindings[keys[i]]
                     withData:data[keys[i]]];
    }
}

- (void)updateUiElement:(UIView *)view withData:(NSString *)data
{
    if ([view respondsToSelector:@selector(setText:)]) {
        [view setValue:data.description forKey:@"text"];
    }
}

- (NSDictionary *)data
{
    NSMutableDictionary *boundData = [NSMutableDictionary new];
    NSArray *keys = self.bindings.allKeys;
    for (int i = 0; i < self.bindings.count; ++i) {
        UIView *view = self.bindings[keys[i]];
        if ([view respondsToSelector:@selector(text)]) {
            boundData[keys[i]] = [view valueForKey:@"text"];
        }
    }
    
    return boundData;
}

- (void)update
{
    [self.viewModel synchronize:self.data];
    [self synchronize:self.viewModel.preparedData];
}

@end
