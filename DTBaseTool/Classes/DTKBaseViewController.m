//
//  DTKBaseViewController.m
//  DTBaseDemo
//
//  Created by 葛悦彣 on 2023/2/14.
//

#import "DTKBaseViewController.h"

@implementation DTKBaseViewController


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
      
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    ///默认加入侧滑
    UIPanGestureRecognizer * pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(rightPanAction:)];
    [self.view addGestureRecognizer:pan];
}
- (void)popViewController{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)back{
    [self popViewController];
}
///侧滑
- (void)rightPanAction:(UIPanGestureRecognizer *)gest
{
    if(self.shutDownBack){
    } else{
        CGPoint gestPoint = [gest translationInView:self.view];
        if (gestPoint.x > 100) {
            [self back];
        }
    }
}

///随意点击关闭键盘
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}


- (UIStatusBarStyle)preferredStatusBarStyle {
    return  self.StatusBarColor ? UIStatusBarStyleLightContent : UIStatusBarStyleDefault;
}


-(void)didReceiveMemoryWarning{
    ///收到内存警告就清内存
    [super didReceiveMemoryWarning];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
    });
}


- (void)dealloc {
    NSLog(@"被释放:%@",self.class);
}

@end
