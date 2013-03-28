//
//  RunViewController.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/26.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "RunViewController.h"

#import "Role.h"

#define kMAX_SPEED 5.0

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

- (void)locationUpdate:(CLLocation *)location distance:(CLLocationDistance)distance timeInterval:(NSTimeInterval)timeInterval
{
    NSString *speedText;
    
    if (location.speed > kMAX_SPEED) {
        speedText = [NSString stringWithFormat:@"%.1f (MAX)", kMAX_SPEED];
    } else {
        speedText = [NSString stringWithFormat:@"%.1f", location.speed];
    }
    
    [self.speedLabel setText:speedText];
    
    distance = MIN(distance, kMAX_SPEED * timeInterval);
    
    [[Role sharedInstance] setDistance:([[Role sharedInstance] distance] + distance)];
    [self.totalDistanceLabel setText:[NSString stringWithFormat:@"%.1f", [[Role sharedInstance] distance]]];
    
    theDistance = theDistance + distance;
    [self.distanceLabel setText:[NSString stringWithFormat:@"%.1f", theDistance]];
    
}

-(void) locationLongTimeNoUpdate
{
    [self.speedLabel setText:@"0.0"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	[[Role sharedInstance] update];
    
	[self.totalDistanceLabel setText:[NSString stringWithFormat:@"%.1f", [[Role sharedInstance] distance]]];
    [self.distanceLabel setText:[NSString stringWithFormat:@"%.1f", theDistance]];
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
