//
//  RegularItem.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/28.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "RegularItem.h"

@implementation RegularItem

- (id)initWithTimeInterval:(NSTimeInterval)timeInterval
{
    self = [super init];
    if (self) {
        CGFloat mul = timeInterval / 60.0;
        
        self.moisture = -0.1 * mul;
        self.satiety = -0.1  * mul;
        
        self.toxin = -0.05 * mul;
        self.weight = -0.001 * mul;
        
        self.fatigue = 0.05 * mul;
    }
    return self;
}

@end
