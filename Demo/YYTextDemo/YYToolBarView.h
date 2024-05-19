//
//  YYToolBarView.h
//  YYKitDemo
//
//  Created by windy on 2024/3/26.
//  Copyright © 2024 ibireme. All rights reserved.
//

#ifndef YYToolBarView_h
#define YYToolBarView_h

@interface YYToolBarView : UIView

@property (nonatomic, strong) UIView* container;

- (void)addChild:(UIView *)child;

@end

#endif /* YYToolBarView_h */
