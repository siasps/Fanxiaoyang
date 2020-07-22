//
//  ColorManager.m
//  UJobinvite
//
//  Created by peng on 2020/3/15.
//  Copyright © 2020 peng. All rights reserved.
//

#import "ColorManager.h"

@implementation ColorManager

static ColorManager *sharedInstance = nil;
+(ColorManager*)sharedInstance{
    if (!sharedInstance) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            sharedInstance = [[ColorManager alloc]init];
        });
    }
    return sharedInstance;
}
- (UIColor *)colorWithArray:(NSArray *)colorArray{
    if (colorArray == nil || colorArray.count == 0) {
        return [UIColor whiteColor];
    }
    if (@available(iOS 13.0, *)) {
        UIColor * color = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection)
        {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleLight)
            {
                return [UIColor colorWithHexString:colorArray.firstObject] ;
            }
            else if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark)
            {
                return  [UIColor colorWithHexString:colorArray.lastObject];
            }
            return [UIColor whiteColor];
        }];
        return color;
    }
    return [UIColor colorWithHexString:colorArray.firstObject];
}


-(UIColor *)navTitleColor{
    return [self colorWithArray:@[@"#DC534A",@"#ECECEC"]];

}
-(UIColor *)view_bgColor{
    return [self colorWithArray:@[@"#FFFFFF",@"#757575"]];

}


-(UIColor*)white_color{
//    return [self colorWithArray:@[@"#FFFFFF",@"#000000"]];
    return [self colorWithArray:@[@"#DC534A",@"#4CE47C"]];


}
@end
