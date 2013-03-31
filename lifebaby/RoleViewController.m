//
//  MainViewController.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/28.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "RoleViewController.h"

@interface RoleViewController ()

@end

@implementation RoleViewController

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
    
    self.timeView.timeType = TimeType24Hour;
    openWeatherMap = [OpenWeatherMap sharedInstance];
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
}

-(void) updateTime
{
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"HH:mm:ss"];
    [self.timeLabel setText:[format stringFromDate:[NSDate date]]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.weatherIconImageView setImage:openWeatherMap.station.weather.iconImage];
    [self.tempLabel setText:[NSString stringWithFormat:@"%.1fC / %.1fF", openWeatherMap.station.tempC, openWeatherMap.station.tempF]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
