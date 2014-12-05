//
//  ViewController.m
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import "MVVMViewController.h"
#import "CPICalcViewModel.h"
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtOriginalCPI;
@property (weak, nonatomic) IBOutlet UITextField *txtOriginalSensitivity;
@property (weak, nonatomic) IBOutlet UITextField *txtNewCPI;
@property (weak, nonatomic) IBOutlet UITextField *txtNewSensitivity;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)setupUi
{
    [self setupBindings];
    self.viewModel = [CPICalcViewModel new];
}

- (void)setupBindings
{
    [self bindView:self.txtOriginalCPI toProperty:@"originalCPI"];
    [self bindView:self.txtOriginalSensitivity toProperty:@"originalSensitivity"];
    [self bindView:self.txtNewCPI toProperty:@"newCPI"];
    [self bindView:self.txtNewSensitivity toProperty:@"newSensitivity"];
    
    NSLog(@"Set up data bindings: %@", self.properties);
}

- (IBAction)btnCalculate_tapped:(UIButton *)sender {
    [self update];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
