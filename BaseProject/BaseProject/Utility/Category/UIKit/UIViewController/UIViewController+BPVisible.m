//
//  UIViewController+BPVisible.m
//  BaseProject
//
//  Created by Ryan on 2017/12/10.
//  Copyright © 2017年 cactus. All rights reserved.
//

#import "UIViewController+BPVisible.h"

@implementation UIViewController (BPVisible)
- (BOOL)bp_isVisible {
    return [self isViewLoaded] && self.view.window;
}

@end
