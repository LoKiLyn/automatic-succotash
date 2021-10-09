//
//  main.m
//  KCObjcBuild
//
//  Created by cooci on 2021/1/5.

/**
 KC 重磅提示 调试工程很重要 源码直观就是爽
 ⚠️编译调试不能过: 请你检查以下几小点⚠️
 ①: enable hardened runtime -> NO
 ②: build phase -> denpendenice -> objc
 ③: team 选择 None
 爽了之后,还来一个 👍
 */


#import <Foundation/Foundation.h>
#import "Test.h"

int main(int argc, const char * argv[]) {
    while (true) {
        @autoreleasepool {
            Test * test = [Test new];
            // insert code here...
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                for (int i = 0; i < 1000000; i++) {
                    [test setRand:0];
                }
            });
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                for (int i = 0; i < 1000000; i++) {
                    [test setRand1:1];
                }
            });
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                for (int i = 0; i < 1000000; i++) {
                    [test setRand2:2];
                }
            });
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                for (int i = 0; i < 1000000; i++) {
                    [test setRand3:3];
                }
            });
        }
    }
    NSLog(@"...");
    return 0;
}
