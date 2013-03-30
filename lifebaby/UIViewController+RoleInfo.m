//
//  UIViewController+RoleInfo.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/30.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "UIViewController+RoleInfo.h"
#import <objc/runtime.h>

#define kRoleInfoViewKey @"kRoleInfoViewKey"

@implementation UIViewController (RoleInfo)

- (void)setRoleInfoView:(id)aObject
{
    objc_setAssociatedObject(self, kRoleInfoViewKey, aObject, OBJC_ASSOCIATION_ASSIGN);
}

- (id)roleInfoView
{
    return objc_getAssociatedObject(self, kRoleInfoViewKey);
}

@end
