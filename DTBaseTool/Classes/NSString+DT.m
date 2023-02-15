//
//  NSString+DT.m
//  DTBaseDemo
//
//  Created by 葛悦彣 on 2023/2/14.
//

#import "NSString+DT.h"

@implementation NSString (DT)


+ (CGSize )textWithtitle:(NSString *)title andSize:(CGSize)size andFout:(UIFont *)fout {
    if(title == nil){
        return CGSizeMake(0, 0);
    }
    CGSize width = [title boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin
                                    attributes:@{NSFontAttributeName : fout}
                                       context:nil].size;
    CGFloat W = floor(width.width) + 1;
    CGFloat H = floor(width.height) + 1;
    
    return CGSizeMake(W, H);
}

- (CGSize )textWithSize:(CGSize)size andFout:(UIFont *)fout {
    return [NSString textWithtitle:self andSize:size andFout:fout];
}


+ (NSMutableAttributedString *)AttributedStringWithStr:(NSString * )str andNodeColor:(UIColor * )nodeColor andSeledColor:(UIColor *)seledColor andNodeFont:(UIFont *)Nodefont andFont:(UIFont *)font andPattenr:(NSString *)pattenr {
    NSRegularExpression *regular = [NSRegularExpression regularExpressionWithPattern:pattenr options:0 error:NULL];
    
    NSArray<NSTextCheckingResult *> *ranges = [regular matchesInString:str options:0 range:NSMakeRange(0, [str length])];
    
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:str attributes:@{NSForegroundColorAttributeName : nodeColor,NSFontAttributeName:font}];
    
    for (int i = 0; i < ranges.count; i++) {
        [attStr setAttributes:@{NSForegroundColorAttributeName : seledColor,NSFontAttributeName:Nodefont} range:ranges[i].range];
    }
    return attStr;
}

+ (BOOL)checkoutPhoneNum: (NSString *)phoneNum {
    NSString *regexStr = @"^(13[0-9]|14[5-9]|15[0-3,5-9]|16[2,5,6,7]|17[0-8]|18[0-9]|19[1,3,5,8,9])\\d{8}$";
    NSError *error;
    NSRegularExpression *regular = [NSRegularExpression regularExpressionWithPattern:regexStr options:NSRegularExpressionCaseInsensitive error:&error];
    if (error) return NO;
    NSInteger count = [regular numberOfMatchesInString:phoneNum options:NSMatchingReportCompletion range:NSMakeRange(0, phoneNum.length)];
    if (count > 0) {
        return YES;
    } else {
        return NO;
    }
}


@end
