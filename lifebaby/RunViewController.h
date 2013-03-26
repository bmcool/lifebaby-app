//
//  RunViewController.h
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/26.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "MoveViewController.h"

@interface RunViewController : MoveViewController<MoveDelegate>

@property (strong, nonatomic) IBOutlet UILabel *speedLabel;
@property (strong, nonatomic) IBOutlet UILabel *distanceLabel;

@end
