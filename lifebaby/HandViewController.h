//
//  SportViewController.h
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/24.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "ShakeViewController.h"

@interface HandViewController : ShakeViewController<ShakeDelegate>

@property (strong, nonatomic) IBOutlet UILabel *numStepsLabel;

@end
