//
//  RoleInfoView.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/28.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "RoleInfoView.h"

#import "Role.h"

@implementation RoleInfoView

-(void) awakeFromNib
{
    if (self.superview == nil) {
        [self initLabels];
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(initLabels) userInfo:nil repeats:YES];
    }
}

- (void) initLabels
{
    Role *role = [Role sharedInstance];
    
    [self.fatigueLabel setText:[NSString stringWithFormat:@"%.1f", role.fatigue]];
    [self.moistureLabel setText:[NSString stringWithFormat:@"%.1f", role.moisture]];
    [self.weightLabel setText:[NSString stringWithFormat:@"%.1f", role.weight]];
    [self.satietyLabel setText:[NSString stringWithFormat:@"%.1f", role.satiety]];
}

@end
