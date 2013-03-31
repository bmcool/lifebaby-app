//
//  TimeView.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/30.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "TimeView.h"

@implementation TimeView

-(void) startStopwatch{}
-(void) pauseStopwatch{}

@end

@implementation _TimeView

- (void)awakeFromNib
{
    
}

- (void)setTimeType:(TimeType)timeType
{
    if (self.timeType != TimeTypeStopwatch && timeType == TimeTypeStopwatch) {
        [self.timeLabel setText:@"00:00:00"];
    }
    [super setTimeType:timeType];
}

- (void) updateTime
{
    if (self.timeType == TimeType24Hour) {
        [self.timeLabel setText:[self get24HourFormatTime]];
    } else if (self.timeType == TimeTypeStopwatch) {        
        if (isStopwatchRunning) {
            [self.timeLabel setText:[self getStopwatchFormatTime]];
        }
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [self updateTime];
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [timer invalidate];
    timer = nil;
}

- (NSString *)get24HourFormatTime
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss"];
    
    NSString *timeString = [dateFormatter stringFromDate:[NSDate date]];
    return timeString;
}

- (NSString *)getStopwatchFormatTime
{	
	NSDate *currentDate = [NSDate date];
    tmpStopwatch = [currentDate timeIntervalSinceDate:startTime];
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:tmpStopwatch];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    
    NSString *timeString = [dateFormatter stringFromDate:timerDate];
    return timeString;
}

-(void) startStopwatch
{
    startTime = [NSDate dateWithTimeIntervalSinceNow:-tmpStopwatch];
    isStopwatchRunning = YES;
}
-(void) pauseStopwatch
{
    isStopwatchRunning = NO;
}

@end
