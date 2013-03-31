//
//  Role.h
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/23.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "NSObject+PropertyListing.h"

#import "DrinkItem.h"
#import "FoodItem.h"

#define EventRoleAttributeChanged @"EventRoleAttributeChanged"

@class Role;
@protocol RoleDelegate<NSObject>

@optional
- (void)role:(Role *)role attributeChangeWithItem:(BaseItem *)item;

@end

@interface Role : NSObject

@property (strong, nonatomic) NSDate *lastExpendDate;
@property (strong, nonatomic) NSDate *lastDrinkDate;
@property (strong, nonatomic) NSDate *lastFoodDate;

@property (assign, nonatomic) NSInteger shakeCount;
@property (assign, nonatomic) CGFloat distance;

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

@property (weak, nonatomic) id<RoleDelegate> delegate;

+ (id)sharedInstance;

- (void)save;
- (void)update;

- (void)growWithItem:(BaseItem *)item;

- (void)growWithDrinkItem:(DrinkItem *)item;
- (void)growWithFoodItem:(FoodItem *)item;
- (BOOL)isCanDrink;
- (BOOL)isCanFood;
- (NSTimeInterval)getDrinkCoolDownTime;
- (NSTimeInterval)getFoodCoolDownTime;




@end
