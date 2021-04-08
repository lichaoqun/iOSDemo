//
//  QGAFNHelp.h
//  Demo_002
//
//  Created by QG on 2020/8/17.
//  Copyright © 2020 xinxianzhizao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QGAFNHelp : NSObject

+(void)requestWithURL:(NSString *)url complete:(void(^)(void))complete;

+(void)requestWithURL:(NSString *)url dependsOn:(id)obj complete:(void(^)(void))complete;

+(void)requestWithURL1:(NSString *)url dependsOn:(id)obj complete:(void(^)(id self))complete;

@end

NS_ASSUME_NONNULL_END
