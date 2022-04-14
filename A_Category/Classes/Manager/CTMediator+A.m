//
//  CTMediator+A.m
//  A_Category_Example
//
//  Created by tofuls on 2022/4/14.
//  Copyright © 2022 wxh. All rights reserved.
//

#import "CTMediator+A.h"

@implementation CTMediator (A)

- (UIViewController *)getAViewController {
    /*
        AViewController *viewController = [[AViewController alloc] init];
     */
    // 这个方法就牛逼了, CTMediator 会自动去找Target_A 的类, 并且去寻找是否存在viewController 方法, 存在就去实现
    return [self performTarget:@"A" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
