//
//  TimeView.h
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/30.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TimeType) {
    TimeType24Hour,
    TimeTypeStopwatch
};

@interface TimeView : UIView

@property (assign, nonatomic) TimeType timeType;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeTextLabel;

- (void) startStopwatch;
- (void) pauseStopwatch;

@end

@interface _TimeView : TimeView {
    NSTimer *timer;
    
    NSDate *startTime;
    NSDate *stopTime;
    BOOL isStopwatchRunning;
}

@end
