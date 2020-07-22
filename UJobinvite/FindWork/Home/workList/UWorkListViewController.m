//
//  UWorkListViewController.m
//  UJobinvite
//
//  Created by peng on 2020/3/16.
//  Copyright © 2020 peng. All rights reserved.
//

#import "UWorkListViewController.h"

@interface UWorkListViewController ()

@end

@implementation UWorkListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setNaviTitle:@"U职"];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 100);
    button.backgroundColor = [UIColor grayColor];
    [button addTarget:self action:@selector(buttonClicl) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)buttonClicl{
    
    if (@available(iOS 13.0, *)) {
     [UIApplication sharedApplication].keyWindow.overrideUserInterfaceStyle = UIUserInterfaceStyleDark;
    } else {
        // Fallback on earlier versions
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
