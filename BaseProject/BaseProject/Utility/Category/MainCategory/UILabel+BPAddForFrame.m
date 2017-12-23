//
//  UILabel+BPAddForFrame.m
//  CatergoryDemo
//
//  Created by xiaruzhen on 16/5/26.
//  Copyright © 2016年 xiaruzhen. All rights reserved.
//

#import "UILabel+BPAddForFrame.h"
#import "UIView+BPAddForFrame.h"
#import "NSString+BPAdd.h"
#import "BPAppMacro.h"

BPSYNTH_DUMMY_CLASS(UILabel_BPAddForFrame)

@implementation UILabel (BPAddForFrame)

- (CGSize)bp_contentSize{
    return [self.text  bp_sizeWithfont:self.font maxSize:CGSizeMake(self.bp_width, MAXFLOAT)];
}


@end
