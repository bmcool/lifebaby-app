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
        self.moisture = 0.5;
        self.satiety = 0.1;
        
        self.toxin = -10;
        self.fatigue = -1;
    }
    return self;
}

@end
