//
//  DTKBaseViewController.h
//  DTBaseDemo
//
//  Created by 葛悦彣 on 2023/2/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DTKBaseViewController : UIViewController

///关闭侧滑
@property (nonatomic, assign) BOOL shutDownBack;

///状态栏颜色 黑白切换 默认黑色
@property (nonatomic, assign) BOOL StatusBarColor;

///默认会调用pop方法 
- (void)back;
///pop
- (void)popViewController;


@end

NS_ASSUME_NONNULL_END
