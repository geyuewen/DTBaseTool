//
//  DTKTool.m
//  DTBaseDemo
//
//  Created by 葛悦彣 on 2023/2/14.
//

#import "DTKTool.h"

@implementation DTKTool

+ (void)RoundedCornerWith:(CGFloat)radius andView:(UIView *)view{
    view.layer.cornerRadius = radius;
    view.layer.masksToBounds = YES;
}

+(void)RoundedCornerWith:(CGFloat)radius andView:(UIView *)view andWidth:(CGFloat)width andColor:(UIColor *)color {
    view.layer.cornerRadius = radius;
    view.layer.borderWidth = width;
    view.layer.borderColor = [color CGColor];
    view.layer.masksToBounds = YES;
}

+ (void)PartialRoundedCornerWith:(CGFloat)radius andView:(UIView *)view andCorner:(UIRectCorner)corner andSize:(CGRect )rect{
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corner cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = rect;
    maskLayer.path = path.CGPath;
    view.layer.mask = maskLayer;
}

+ (UILabel *)labelWithText:(NSString *)text andTextColor:(UIColor *)color andFont:(UIFont *)font {
    UILabel * titleLab = [[UILabel alloc] init];
    titleLab.text = text;
    titleLab.font = font;
    titleLab.textColor = color;
    return titleLab;
}

@end
