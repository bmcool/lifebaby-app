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
    
    self.shakeCount = [[Role sharedInstance] shakeCount];
	[self.shakeCountLabel setText:[NSString stringWithFormat:@"%d", self.shakeCount]];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
        
    [[Role sharedInstance] save];
}

-(void) incrShakeCount
{
    [super incrShakeCount];
    
    [self.shakeCountLabel setText:[NSString stringWithFormat:@"%d", self.shakeCount]];
    
    [[Role sharedInstance] setShakeCount:self.shakeCount];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
