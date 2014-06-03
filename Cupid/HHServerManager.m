//
//  HHServerManager.m
//  FamilyGuy
//
//  Created by Yuk Lai Suen on 1/27/14.
//  Copyright (c) 2014 Yuk Lai Suen. All rights reserved.
//

#import "HHServerManager.h"
@interface HHServerManager()
@property (nonatomic, strong) NSMutableArray *messagePosted;
@property (nonatomic, strong) HHUser *user;
@end
@implementation HHServerManager

+ (id)sharedManager
{
    static HHServerManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [HHServerManager new];
    });
    return manager;
}

- (id)init
{
    self = [super init];
    if (self) {
        _messagePosted = [NSMutableArray array];
        _user = [HHUser userWithName:@"Peter Griffin"];
        _user.friends = [NSMutableArray array];
        [_user.friends addObject:[HHUser userWithName:@"Glen Quagmires"]];
        [_user.friends addObject:[HHUser userWithName:@"Joe Swanson"]];
        [_user.friends addObject:[HHUser userWithName:@"Cleveland Brown"]];
    }
    
    return self;
}

- (BOOL)postMessage:(HHMessage *)messge
{
    [self.messagePosted addObject:messge];
    
    //After a small delay, fake a message received posting
    return YES;
}

@end
