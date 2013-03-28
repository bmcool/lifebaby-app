//
//  RunViewController.h
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/26.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "MoveViewController.h"

@interface RunViewController : MoveViewController<MoveDelegate> {
    CGFloat theDistance;
}

@property (weak, nonatomic) IBOutlet UILabel *speedLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalDistanceLabel;

@end
