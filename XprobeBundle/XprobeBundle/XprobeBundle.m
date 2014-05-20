//
//  XprobeBundle.m
//  XprobeBundle
//
//  Created by John Holdsworth on 18/05/2014.
//  Copyright (c) 2014 John Holdsworth. All rights reserved.
//

#import "Xprobe.h"

#import <UIKit/UIKit.h>

@implementation Xprobe(Seeding)

+ (void)load {
    [self connectTo:"127.0.0.1"];
    [self search:@""];
}

+ (NSArray *)xprobeSeeds {
    UIApplication *app = [UIApplication sharedApplication];
    NSMutableArray *seeds = [[app windows] mutableCopy];
    [seeds insertObject:app atIndex:0];
    return seeds;
}

@end


