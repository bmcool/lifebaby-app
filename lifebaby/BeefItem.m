//
//  BeefItem.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/30.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "BeefItem.h"

@implementation BeefItem

- (id)init
{
    self = [super init];
    if (self) {
        self.moisture = 10;
        self.satiety = 30;
        
        self.toxin = -10;
        self.fatigue = -5;
    }
    return self;
}

@end
