//
//  BPCellAutoLayoutHeightDataSource.m
//  BaseProject
//
//  Created by xiaruzhen on 2018/4/17.
//  Copyright © 2018年 cactus. All rights reserved.
//

#import "BPCellAutoLayoutHeightDataSource.h"
#import "BPCellAutoLayoutHeightModel.h"

@implementation BPCellAutoLayoutHeightDataSource

+ (NSArray *)array {
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:5];
    NSArray *textArray = @[@"1. 一流国家是棋手，二流国家是棋子，三流国家是棋盘。",@"2. 你们为什么要攻打叙利亚？美英法：“我们怀疑他有大规模杀伤性武器。“那为什么不打俄罗斯？”美英法：“他真有大规模杀伤性武器。”",@"3. A：“看新闻上说特朗普在白宫成立了一个神秘的‘中央圣经学习小组’，你怎么看？”B：“是呀，看当下这形势，估计也就封皮是圣经，内容应该是我国十九大报告吧。。。”",@"4. 看到新闻上美英法像饿狼一样扑向叙利亚，我的心一下子就紧绷了起来。。。七年了，叙利亚的苦难什么时间是个头啊？？？我觉得我们应该去安慰安慰叙利亚，我们能做的就是让国足和叙利亚踢一场球赛吧！",@"5. 德国谚语：世界上最难的事情是什么？在法国投降前打进巴黎。"];
    NSArray *photoImageArray = @[@"Yosemite00",@"Yosemite01",@"Yosemite02",@"Yosemite03",@"Yosemite04",];
    NSArray *nameArray = @[@"Yosemite00",@"Yosemite01",@"Yosemite02",@"Yosemite03",@"Yosemite04",];
    for (int i = 0; i<5; i++) {
        BPCellAutoLayoutHeightModel *model = [[BPCellAutoLayoutHeightModel alloc] init];
        model.headImage = @"";
        model.text = textArray[i];
        model.name = nameArray[i];
        model.photoImage = photoImageArray[i];
        [array addObject:model];
    }
    return array.copy;
}

@end