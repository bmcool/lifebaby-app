//
//  RoleInfoView.h
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/28.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoleInfoView : UIView

@property (weak, nonatomic) IBOutlet UILabel *weightLabel;
@property (weak, nonatomic) IBOutlet UILabel *moistureLabel;
@property (weak, nonatomic) IBOutlet UILabel *fatigueLabel;
@property (weak, nonatomic) IBOutlet UILabel *satietyLabel;

@end

@interface _RoleInfoView : RoleInfoView

@end
