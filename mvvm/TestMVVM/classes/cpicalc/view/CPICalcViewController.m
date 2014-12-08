//
//  ViewController.m
//  TestMVVM
//
//  Created by Greg McQuillan on 12/4/14.
//  Copyright (c) 2014 Greg McQuillan. All rights reserved.
//

#import "MVVMViewController.h"
#import "CPICalcViewModel.h"
#import "CPICalcViewController.h"
#import "UIView+Shadows.h"

@interface CPICalcViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtOriginalCPI;
@property (weak, nonatomic) IBOutlet UITextField *txtOriginalSensitivity;
@property (weak, nonatomic) IBOutlet UITextField *txtNewCPI;
@property (weak, nonatomic) IBOutlet UITextField *txtNewSensitivity;

@property (weak, nonatomic) IBOutlet UIView *viwInputContainer;

@property (weak, nonatomic) IBOutlet UILabel *lblSensitivity;
@property (weak, nonatomic) IBOutlet UILabel *lblCPI;
@property (weak, nonatomic) IBOutlet UILabel *lblOriginal;
@property (weak, nonatomic) IBOutlet UILabel *lblNew;
@property (weak, nonatomic) IBOutlet UIButton *btnCalculate;

@end

@implementation CPICalcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)textField_update:(UITextField *)sender {
    [self update];
}

- (void)setupUi
{
    [self setupBindings];
    self.viewModel = [CPICalcViewModel new];
    [self stylizeUi];
}

- (void)stylizeUi
{
    self.viwInputContainer.layer.cornerRadius = 20;
    self.viwInputContainer.backgroundColor = [UIColor colorWithRed:0 green:.5 blue:.7 alpha:1];
    [self.lblCPI addDropShadow:[UIColor blackColor]];
    [self.lblSensitivity addDropShadow:[UIColor blackColor]];
    [self.lblOriginal addDropShadow:[UIColor blackColor]];
    [self.lblNew addDropShadow:[UIColor blackColor]];
    [self.btnCalculate.titleLabel addDropShadow:[UIColor blackColor]];
    self.btnCalculate.backgroundColor = [UIColor colorWithRed:.8 green:.4 blue:.1 alpha:1];
    self.btnCalculate.layer.cornerRadius = 10;
    
    self.view.backgroundColor = [UIColor blackColor];
}

- (void)setupBindings
{
    [self bindView:self.txtOriginalCPI toProperty:@"originalCPI"];
    [self bindView:self.txtOriginalSensitivity toProperty:@"originalSensitivity"];
    [self bindView:self.txtNewCPI toProperty:@"newCPI"];
    [self bindView:self.txtNewSensitivity toProperty:@"newSensitivity"];
    
    NSLog(@"Set up data bindings: %@", self.bindings);
}

- (IBAction)btnCalculate_tapped:(UIButton *)sender {
    [self update];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
