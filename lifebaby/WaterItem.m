//
//  Water.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/28.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "WaterItem.h"

@implementation WaterItem

- (id)init
{
    self = [super init];
    if (self) {
        self.moisture = 30;
        self.satiety = 3;
        
        self.toxin = -10;
        self.fatigue = -5;
    }
    return self;
}

@end
