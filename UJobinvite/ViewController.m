//
//  ViewController.m
//  UJobinvite
//
//  Created by peng on 2020/3/15.
//  Copyright © 2020 peng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"++++++");
    
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.backgroundColor = [ColorManager sharedInstance].white_color;
    [self.view addSubview:view];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.frame = CGRectMake(100, 200, 100, 100);
    button.backgroundColor = [UIColor grayColor];
    [button addTarget:self action:@selector(buttonClicl) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 300, 100, 100)];
    imageView.image = [UIImage imageNamed:@"image_test"];
    [self.view addSubview:imageView];
    
    
//    if (UITraitCollection.currentTraitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
//        [self.titleLabel setText:@"DarkMode"];
//    }
//    else {
//        [self.titleLabel setText:@"LightMode"];
//    }
}

-(void)buttonClicl{
    
    if (@available(iOS 13.0, *)) {
        if ([UIApplication sharedApplication].keyWindow.overrideUserInterfaceStyle == UIUserInterfaceStyleDark) {
            [UIApplication sharedApplication].keyWindow.overrideUserInterfaceStyle = UIUserInterfaceStyleLight;
        }else if ([UIApplication sharedApplication].keyWindow.overrideUserInterfaceStyle == UIUserInterfaceStyleLight){
            [UIApplication sharedApplication].keyWindow.overrideUserInterfaceStyle = UIUserInterfaceStyleDark;
        }
    } else {
        // Fallback on earlier versions
    }
}

@end
