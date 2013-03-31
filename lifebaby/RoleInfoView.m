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
@end

@implementation _RoleInfoView

-(void) awakeFromNib
{
    
}

- (void) updateLabels
{
    Role *role = [Role sharedInstance];
    
    [self.fatigueLabel setText:[NSString stringWithFormat:@"%.1f", role.fatigue]];
    [self.moistureLabel setText:[NSString stringWithFormat:@"%.1f", role.moisture]];
    [self.weightLabel setText:[NSString stringWithFormat:@"%.1f", role.weight]];
    [self.satietyLabel setText:[NSString stringWithFormat:@"%.1f", role.satiety]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self updateLabels];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateLabels) name:EventRoleAttributeChanged object:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
