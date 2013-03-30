//
//  UIViewController+RoleInfo.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/30.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "UIViewController+ImpStoryboardExtend.h"
#import "NSObject+Swizzle.h"

@implementation UIViewController (ImpStoryboardExtend)

- (void) myViewDidLoad
{
    [self myViewDidLoad];
	[self storyboardXibViewToXib];
}

// The "+ load" method is called once, very early in the application life-cycle.
// It's called even before the "main" function is called. Beware: there's no
// autorelease pool at this point, so avoid Objective-C calls.
+(void) load
{
    [self swizzleMethod:@selector(myViewDidLoad) withMethod:@selector(viewDidLoad)];
}

@end
