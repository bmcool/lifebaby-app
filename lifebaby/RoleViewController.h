//
//  MainViewController.h
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/28.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "OpenWeatherMap.h"

#import "MotionViewController.h"

@interface RoleViewController : UIViewController {
    OpenWeatherMap *openWeatherMap;
}

@property (weak, nonatomic) IBOutlet UIImageView *weatherIconImageView;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end
