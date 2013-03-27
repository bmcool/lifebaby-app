//
//  Role.m
//  lifebaby
//
//  Created by Lin Chi-Cheng on 13/3/23.
//  Copyright (c) 2013年 lifebaby. All rights reserved.
//

#import "Role.h"

#import "NSUserDefaults+MPSecureUserDefaults.h"

@implementation Role

static Role *sharedInstance;

static NSString *_roleId;

+ (id)sharedInstance
{
    if (!sharedInstance)
    {
        
        @synchronized(self)
        {
            _roleId = @"0";
            
            sharedInstance = [[self alloc] init];
            
            [sharedInstance update];
        }
    }
    return sharedInstance;
}

-(void) setRoleId:(NSString *)roleId
{
    [self save];
    _roleId = roleId;
    [self update];
}

-(void) save
{    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *data = [self properties_aps];
    [defaults setSecureObject:data forKey:[NSString stringWithFormat:@"Role_%@", _roleId]];
    [defaults synchronize];
}

-(void) update
{
    BOOL valid = NO;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *role = [defaults secureDictionaryForKey:[NSString stringWithFormat:@"Role_%@", _roleId] valid:&valid];
    
    if (!valid) {
        NSLog(@"update: Local role's data is invalid.");
    } else {
        [self setValuesForKeysWithDictionary:role];
    }
}

@end
