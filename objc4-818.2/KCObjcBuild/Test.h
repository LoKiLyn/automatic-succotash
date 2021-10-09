//
//  Test.h
//  KCObjcBuild
//
//  Created by roborock on 2021/10/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Test : NSObject

@property(assign, atomic) int rand;

- (void)setRand1:(int)rand;
- (void)setRand2:(int)rand;
- (void)setRand3:(int)rand;

@end

NS_ASSUME_NONNULL_END
