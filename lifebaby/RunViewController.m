//
//  RunViewController.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/26.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "RunViewController.h"

#import "Role.h"

@interface RunViewController ()

@end

@implementation RunViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)locationUpdate:(CLLocation *)location distance:(CLLocationDistance)distance
{
    [self.speedLabel setText:[NSString stringWithFormat:@"%.2f", location.speed]];
    
    NSLog(@"d1=%.2f, d2=%.2f", [[Role sharedInstance] distance], distance);
    [[Role sharedInstance] setDistance:([[Role sharedInstance] distance] + distance)];
    [self.distanceLabel setText:[NSString stringWithFormat:@"%.2f", [[Role sharedInstance] distance]]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	[[Role sharedInstance] update];
    
	[self.distanceLabel setText:[NSString stringWithFormat:@"%.2f", [[Role sharedInstance] distance]]];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [[Role sharedInstance] save];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
