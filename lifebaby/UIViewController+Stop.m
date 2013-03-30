//
//  UIViewController+Stop.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/30.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "UIViewController+Stop.h"

#import "Role.h"

@implementation UIViewController (Stop)

-(IBAction)stop:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
    [[Role sharedInstance] save];
}

@end
