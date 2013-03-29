//
//  RoleInfoViewController.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/29.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "RoleInfoViewController.h"

#import "UIViewController+StoryboardExtend.h"

@interface RoleInfoViewController ()

@end

@implementation RoleInfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self storyboardXibViewToXib];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
