//
//  DrinkViewController.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/24.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "DrinkViewController.h"

#import "WaterItem.h"

@interface DrinkViewController ()

@end

@implementation DrinkViewController

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
}

- (NSTimeInterval)getCooldownTime
{
    return [[Role sharedInstance] getDrinkCoolDownTime];
}

- (IBAction)drinkWater:(id)sender
{
    [self.view setButtonsEnable:NO];
    [[Role sharedInstance] growWithDrinkItem:[WaterItem new]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
