//
//  DrinkViewController.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/24.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "DrinkViewController.h"

#import "WaterItem.h"

#import "Role.h"

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
    
    [self setButtonsEnable:NO];
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateCoolDown) userInfo:nil repeats:YES];
}

- (void) setButtonsEnable:(BOOL)enable
{
    for (UIButton *view in [self.view subviews]) {
        if ([view isKindOfClass:[UIButton class]]) {
            [view setEnabled:enable];
        }
    }
}

- (void)updateCoolDown
{
    NSTimeInterval timeInterval = [[Role sharedInstance] getDrinkCoolDownTime];
    
    if (timeInterval <= 0) {
        timeInterval = 0;
        [self setButtonsEnable:YES];
    }
    
    if (timeInterval <= 60) {
        [self.coolDownLabel setText:[NSString stringWithFormat:@"%.0f secs", timeInterval]];
    } else if (timeInterval > 60) {
        [self.coolDownLabel setText:[NSString stringWithFormat:@"%.0f mins", timeInterval / 60.0]];
    }
}

- (IBAction)drinkWater:(id)sender
{
    [self setButtonsEnable:NO];
    [[Role sharedInstance] growWithDrinkItem:[WaterItem new]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
