//
//  SportViewController.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/24.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "HandViewController.h"

#import "Role.h"

@interface HandViewController ()

@end

@implementation HandViewController

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
    
    [[Role sharedInstance] update];
    
    self.numSteps = [[Role sharedInstance] numSteps];
	[self.numStepsLabel setText:[NSString stringWithFormat:@"%d", self.numSteps]];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [[Role sharedInstance] save];
}

-(void) incrNumSteps
{
    [super incrNumSteps];
    
    [self.numStepsLabel setText:[NSString stringWithFormat:@"%d", self.numSteps]];
    
    [[Role sharedInstance] setNumSteps:self.numSteps];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
