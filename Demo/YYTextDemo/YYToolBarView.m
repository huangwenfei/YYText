//
//  YYToolBarView.m
//  YYKitDemo
//
//  Created by windy on 2024/3/26.
//  Copyright © 2024 ibireme. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YYToolBarView.h"

@implementation YYToolBarView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        if ([UIVisualEffectView class]) {
            _container = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight]];
        } else {
            _container = [UIToolbar new];
        }
    }
    return self;
}

- (void)addChild:(UIView *)child {
    if ([UIVisualEffectView class]) {
        [[(UIVisualEffectView*)_container contentView] addSubview:child];
    } else {
        [_container addSubview:child];
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _container.frame = [self bounds];
}

@end
