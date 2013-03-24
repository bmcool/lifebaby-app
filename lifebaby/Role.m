//
//  Role.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/23.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "Role.h"

@implementation Role

static Role *sharedInstance;

+ (id)sharedInstance
{
    if (!sharedInstance)
    {
        @synchronized(self)
        {
            sharedInstance = [[self alloc] init];
        }
    }
    return sharedInstance;
}

@end
