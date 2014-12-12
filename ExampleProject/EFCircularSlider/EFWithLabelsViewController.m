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
    NSArray *labels = @[@"0", @"10", @"20", @"30", @"60", @"播完当前"];
    [circularSlider setInnerMarkingLabels:labels];
    circularSlider.snapToLabels = YES;
    circularSlider.outerLabels = YES;
    
    circularSlider.handleType = CircularSliderHandleTypeBigCircle;
    circularSlider.handleOffset = -15.0f;
    circularSlider.handleWidth = 15.0f;
    circularSlider.hideFillLine = YES;
    
    circularSlider.unfilledColor = [UIColor colorWithRed:238/255.0f green:238/255.0f blue:238/255.0f alpha:1.0f];
    circularSlider.handleColor = [UIColor colorWithRed:1.0f green:115/255.0f blue:0 alpha:1.0f];
    circularSlider.labelColor = [UIColor blackColor];
    circularSlider.labelFont = [UIFont systemFontOfSize:14.0f];
    circularSlider.lineWidth = 3.0f;
    
    circularSlider.startAngel = 0;
    circularSlider.endAngel = 225;
    
    [self.view addSubview:circularSlider];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
