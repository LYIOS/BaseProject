//
//  BPCollectionViewNestGestureCategotyDetailController.h
//  BaseProject
//
//  Created by Ryan on 2018/6/12.
//  Copyright © 2018年 cactus. All rights reserved.
//

#import "BPBaseViewController.h"
#import "BPGestureRecognizerTableView.h"

@interface BPCollectionViewNestGestureCategotyDetailController : BPBaseViewController
@property (nonatomic,assign) NSInteger index;
@property (weak, nonatomic) IBOutlet BPGestureRecognizerTableView *tableView;
@end
