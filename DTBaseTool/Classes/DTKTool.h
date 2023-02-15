//
//  DTKTool.h
//  DTBaseDemo
//
//  Created by 葛悦彣 on 2023/2/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DTKTool : NSObject


#pragma mark - 圆角

/// 控件圆角
/// - Parameters:
///   - radius: 圆角半径
///   - view: 控件
+ (void)RoundedCornerWith:(CGFloat)radius andView:(UIView *)view;

/// 控件圆角带边框
/// - Parameters:
///   - radius: 圆角半径
///   - view: 控件
///   - width: 边框宽度
///   - color: 颜色
+(void)RoundedCornerWith:(CGFloat)radius andView:(UIView *)view andWidth:(CGFloat)width andColor:(UIColor *)color;




/// 部分圆角
/// - Parameters:
///   - radius: 圆角半径
///   - view: 控件
///   - corner:需要处理的角
///   - rect: 控件的frame
+ (void)PartialRoundedCornerWith:(CGFloat)radius andView:(UIView *)view andCorner:(UIRectCorner)corner andSize:(CGRect )rect;


#pragma mark - 创建控件
+ (UILabel *)labelWithText:(NSString *)text andTextColor:(UIColor *)color andFont:(UIFont *)font;







@end

NS_ASSUME_NONNULL_END
