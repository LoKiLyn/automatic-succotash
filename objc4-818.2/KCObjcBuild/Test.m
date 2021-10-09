//
//  Test.m
//  KCObjcBuild
//
//  Created by roborock on 2021/10/8.
//

#import "Test.h"

@implementation Test

- (void)setRand:(int)rand {
    @synchronized (self) {
        _rand = rand;
        if (_rand != 0) {
            NSLog(@"%s, %d", __func__, _rand);
        } else {
            NSLog(@"%s, %@", __func__, @"Good.");
        }
    }
}

- (void)setRand1:(int)rand {
    @synchronized (self) {
    _rand = rand;
    if (_rand != 1) {
        NSLog(@"%s, %d", __func__, _rand);
    } else {
        NSLog(@"%s, %@", __func__, @"Good.");
    }
    }
}

- (void)setRand2:(int)rand {
    @synchronized (self) {
    _rand = rand;
    if (_rand != 2) {
        NSLog(@"%s, %d", __func__, _rand);
    } else {
        NSLog(@"%s, %@", __func__, @"Good.");
    }
    }
}

- (void)setRand3:(int)rand {
    @synchronized (self) {
    _rand = rand;
    if (_rand != 3) {
        NSLog(@"%s, %d", __func__, _rand);
    } else {
        NSLog(@"%s, %d", __func__, @"Good.");
    }
    }
}

@end
