//
//  NSString+DT.h
//  DTBaseDemo
//
//  Created by 葛悦彣 on 2023/2/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (DT)


/// 计算文本尺寸 (富文本不适用)
/// - Parameters:
///   - title: 文本
///   - size: 尺寸
///   - fout: 字体大小
+ (CGSize )textWithtitle:(NSString *)title andSize:(CGSize)size andFout:(UIFont *)fout;
- (CGSize )textWithSize:(CGSize)size andFout:(UIFont *)fout;


/// 正则富文本
/// - Parameters:
///   - str: 文本
///   - nodeColor: 默认颜色
///   - seledColor: 正则颜色
///   - Nodefont: 默认字体
///   - font: 正则字体
///   - pattenr: 正则
+ (NSMutableAttributedString *)AttributedStringWithStr:(NSString * )str andNodeColor:(UIColor * )nodeColor andSeledColor:(UIColor *)seledColor andNodeFont:(UIFont *)Nodefont andFont:(UIFont *)font andPattenr:(NSString *)pattenr ;

/// 判断是否是手机号
/// - Parameter phoneNum: 手机号字符串
+ (BOOL)checkoutPhoneNum: (NSString *)phoneNum;


@end

NS_ASSUME_NONNULL_END
