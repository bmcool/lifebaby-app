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

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(initLabels) userInfo:nil repeats:YES];
        
        // label is nil before view controller did load...
        [self performSelector:@selector(initLabels) withObject:nil afterDelay:0.0];
    }
    return self;
}

- (void) initLabels
{
    Role *role = [Role sharedInstance];
    
    [self.fatigueLabel setText:[NSString stringWithFormat:@"%.1f", role.fatigue]];
    [self.moistureLabel setText:[NSString stringWithFormat:@"%.1f", role.moisture]];
    [self.weightLabel setText:[NSString stringWithFormat:@"%.1f", role.weight]];
    [self.satietyLabel setText:[NSString stringWithFormat:@"%.1f", role.satiety]];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
