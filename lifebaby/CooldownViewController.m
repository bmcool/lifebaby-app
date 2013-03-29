//
//  CooldownViewController.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/29.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "CooldownViewController.h"

@interface CooldownViewController ()

@end

@implementation CooldownViewController

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
    
	[self.view setButtonsEnable:NO];
    
}

- (void)updateCooldown
{
    NSLog(@"Not Implemented %s", __PRETTY_FUNCTION__);
}

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    coolCooldownTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateCooldown) userInfo:nil repeats:YES];
}

-(void) viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    [coolCooldownTimer invalidate];
}

- (void)updateCooldownWithTimeInterval:(NSTimeInterval)timeInterval
{
    if (timeInterval <= 0) {
        timeInterval = 0;
        [self.view setButtonsEnable:YES];
    }
    
    if (timeInterval <= 60) {
        [self.cooldownLabel setText:[NSString stringWithFormat:@"%.0f secs", timeInterval]];
    } else if (timeInterval > 60) {
        [self.cooldownLabel setText:[NSString stringWithFormat:@"%.0f mins", timeInterval / 60.0]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
