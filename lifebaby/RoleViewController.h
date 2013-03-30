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

#import "Role.h"

#import "UIViewController+RoleInfo.h"

@interface RoleViewController : UIViewController {
    OpenWeatherMap *openWeatherMap;
    
    Role *role;
}

@property (weak, nonatomic) IBOutlet UIImageView *weatherIconImageView;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end
