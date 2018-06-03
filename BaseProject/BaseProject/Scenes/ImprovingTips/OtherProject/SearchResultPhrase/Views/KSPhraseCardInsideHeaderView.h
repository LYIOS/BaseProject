//
//  KSPhraseCardInsideHeaderView.h
//  PowerWord7
//
//  Created by xiaruzhen on 2018/4/11.
//  Copyright © 2018年 Kingsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSDictionaryPhrase.h"

@interface KSPhraseCardInsideHeaderView : UITableViewHeaderFooterView
- (void)setModel:(KSDictionarySubItemPhraseJx *)model section:(NSInteger)section;
@end
