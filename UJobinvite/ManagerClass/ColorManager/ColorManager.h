//
//  ColorManager.h
//  UJobinvite
//
//  Created by peng on 2020/3/15.
//  Copyright © 2020 peng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorManager : NSObject

+(ColorManager*)sharedInstance;

-(UIColor *)navTitleColor;

-(UIColor *)view_bgColor;

-(UIColor*)white_color;

@end

NS_ASSUME_NONNULL_END
