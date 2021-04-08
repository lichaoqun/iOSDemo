//
//  QGAFNHelp.m
//  Demo_002
//
//  Created by QG on 2020/8/17.
//  Copyright © 2020 xinxianzhizao. All rights reserved.
//

#import "QGAFNHelp.h"
#import "AFNetworking.h"

@implementation QGAFNHelp
+(void)requestWithURL:(NSString *)url complete:(void(^)(void))complete{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.cachePolicy = NSURLRequestReloadRevalidatingCacheData;
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain",@"text/html",nil];
    [manager GET:@"https://www.google.com/search?q=asfsaf&oq=asfsaf&aqs=chrome..69i57.1185j0j1&sourceid=chrome&ie=UTF-8"
      parameters:nil
        progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task,
                   id  _Nullable responseObject) {
        complete();
    }
         failure:^(NSURLSessionDataTask * _Nullable task,
                   NSError * _Nonnull error) {
             complete();
         }];
}

+(void)requestWithURL:(NSString *)url dependsOn:(id)obj complete:(void(^)(void))complete{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.cachePolicy = NSURLRequestReloadRevalidatingCacheData;
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain",@"text/html",nil];
    [manager GET:@"https://www.google.com/search?q=asfsaf&oq=asfsaf&aqs=chrome..69i57.1185j0j1&sourceid=chrome&ie=UTF-8"
      parameters:nil
        progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task,
                   id  _Nullable responseObject) {
        NSLog(@"callback");
        if (obj) {
                    complete();

        }
    }
         failure:^(NSURLSessionDataTask * _Nullable task,
                   NSError * _Nonnull error) {
        NSLog(@"callback");
             if (obj) {
                         complete();

             }
         }];

}

+(void)requestWithURL1:(NSString *)url dependsOn:(id)obj complete:(void(^)(id self))complete{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.cachePolicy = NSURLRequestReloadRevalidatingCacheData;
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain",@"text/html",nil];
    [manager GET:@"https://www.google.com/search?q=asfsaf&oq=asfsaf&aqs=chrome..69i57.1185j0j1&sourceid=chrome&ie=UTF-8"
      parameters:nil
        progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task,
                   id  _Nullable responseObject) {
        NSLog(@"tt+callback");
        if (obj) {
                    complete(obj);

        }
    }
         failure:^(NSURLSessionDataTask * _Nullable task,
                   NSError * _Nonnull error) {
        NSLog(@"tt+callback");
             if (obj) {
                         complete(obj);

             }
         }];

}

@end
