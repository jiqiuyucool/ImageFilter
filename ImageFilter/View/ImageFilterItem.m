//
//  ImageFilterItem.m
//  ImageFilter
//
//  Created by 冀秋羽 on 15/7/22.
//  Copyright (c) 2015年 冀秋羽. All rights reserved.
//

#import "ImageFilterItem.h"

@implementation ImageFilterItem


- (IBAction)btn_itemClick:(id)sender {
    if (_iconClick) {
        _iconClick();
    }
}
@end
