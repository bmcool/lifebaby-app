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
        self.moisture = 0.1;
        self.satiety = 0.5;
        
        self.toxin = -10;
        self.fatigue = -1;
    }
    return self;
}

@end
