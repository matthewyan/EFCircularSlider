//
//  EFWithLabelsViewController.m
//  EFCircularSlider
//
//  Created by Eliot Fowler on 12/5/13.
//  Copyright (c) 2013 Eliot Fowler. All rights reserved.
//

#import "EFWithLabelsViewController.h"
#import "EFCircularSlider.h"

@interface EFWithLabelsViewController ()

@end

@implementation EFWithLabelsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect sliderFrame = CGRectMake(10, 100, 300, 300);
    EFCircularSlider* circularSlider = [[EFCircularSlider alloc] initWithRadius:100];
    circularSlider.frame = sliderFrame;
    circularSlider.backgroundColor = [UIColor lightGrayColor];
    
//    NSArray* labels = @[@"Beetle", @"Cow", @"Donkey", @"Eagle", @"Ant"];
    NSArray *labels = @[@"播完当前", @"0", @"10", @"20", @"30", @"60"];
    [circularSlider setInnerMarkingLabels:labels];
    circularSlider.snapToLabels = YES;
    circularSlider.outerLabels = YES;
    
    circularSlider.handleType = CircularSliderHandleTypeBigCircle;
    circularSlider.handleOffset = -15.0f;
    circularSlider.handleWidth = 15.0f;
    
    [self.view addSubview:circularSlider];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
