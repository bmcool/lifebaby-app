//
//  UIViewController+TimeView.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/31.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "UIViewController+TimeView.h"
#import <objc/runtime.h>

#define kTimeViewKey @"kTimeViewKey"

@implementation UIViewController (TimeView)

- (void)setTimeView:(id)aObject
{
    objc_setAssociatedObject(self, kTimeViewKey, aObject, OBJC_ASSOCIATION_ASSIGN);
}

- (id)timeView
{
    return objc_getAssociatedObject(self, kTimeViewKey);
}

@end
