//
//  SportViewController.h
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/24.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "PedometerViewController.h"

@interface SportViewController : PedometerViewController<PedometerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *numStepsLabel;

@end
