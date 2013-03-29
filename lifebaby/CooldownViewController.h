//
//  CooldownViewController.h
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/29.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RoleInfoViewController.h"
#import "UIView+Addition.h"
#import "Role.h"

@interface CooldownViewController : RoleInfoViewController {
    NSTimer *coolCooldownTimer;
}

@property (weak, nonatomic) IBOutlet UILabel *cooldownLabel;

- (void)updateCooldown;
- (void)updateCooldownWithTimeInterval:(NSTimeInterval)timeInterval;

@end
