//
//  NSString+GQCategory.m
//  ImageViewer
//
//  Created by 高旗 on 16/11/30.
//  Copyright © 2016年 tusm. All rights reserved.
//

#import "NSString+GQImageViewrCategory.h"

@implementation NSString (GQImageViewrCategory)

- (CGSize)textSizeWithFont:(UIFont *)font withcSize:(CGSize)size{
    CGSize actualTitleSize;
    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0) {
        actualTitleSize = [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil] context:nil].size;
    }else{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated"
        actualTitleSize = [self sizeWithFont:font forWidth:size.width lineBreakMode:NSLineBreakByTruncatingTail];
#pragma clang diagnostic pop
    }
    return actualTitleSize;
}

@end
