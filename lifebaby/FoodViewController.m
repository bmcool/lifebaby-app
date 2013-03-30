//
//  FoodViewController.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/29.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "FoodViewController.h"

#import "BeefItem.h"

@interface FoodViewController ()

@end

@implementation FoodViewController

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
	// Do any additional setup after loading the view.
}

- (NSTimeInterval)getCooldownTime
{
    return [[Role sharedInstance] getFoodCoolDownTime];
}

- (IBAction)FoodBeef:(id)sender
{
    [self.view setButtonsEnable:NO];
    [[Role sharedInstance] growWithFoodItem:[BeefItem new]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
