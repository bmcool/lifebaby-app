//
//  Role.h
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/23.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "NSObject+PropertyListing.h"

@interface Role : NSObject

@property (assign, nonatomic) NSInteger numSteps;

@property (assign, nonatomic) CGFloat temperament;
@property (assign, nonatomic) CGFloat intelligence;
@property (assign, nonatomic) CGFloat charm;
@property (assign, nonatomic) CGFloat sensibility;
@property (assign, nonatomic) CGFloat vitality;

@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) CGFloat fatigue;
@property (assign, nonatomic) CGFloat toxin;
@property (assign, nonatomic) CGFloat moisture;
@property (assign, nonatomic) CGFloat satiety;

+ (id)sharedInstance;

- (void) save;
- (void) update;

@end
