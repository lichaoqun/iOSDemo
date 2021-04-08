//
//  Header.h
//  Demo_003
//
//  Created by QG on 2020/4/22.
//  Copyright © 2020 xinxianzhizao. All rights reserved.
//

#ifndef Header_h
#define Header_h

#define shouldImplement1(obj, sel) (NO && ([obj sel], NO));
#define shouldImplement2(obj, sel) (NO && ([obj sel], NO), getSelName(@# sel));

/** selDic中如果有, 就直接返回, 如果没有就赋值 */
SEL getSelName(NSString *selName){
    
    // - 定义变量
    static NSMutableDictionary *selDic = NULL;
    __block NSString *funcName = [selDic objectForKey:selName];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        selDic = [NSMutableDictionary dictionary];
    });
    
    // - 已经缓存
    if (funcName) return NSSelectorFromString(funcName);
    
    // - 未缓存
    funcName= @"";
    NSCharacterSet *separator = [NSCharacterSet characterSetWithCharactersInString:@": "];
    NSArray <NSString *> * strArray = [selName componentsSeparatedByCharactersInSet: separator];
    [strArray enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if(idx % 2 == 0) funcName = [funcName stringByAppendingFormat:@"%@:", obj];
    }];
    
    // - 缓存起来
    funcName = [funcName substringToIndex:funcName.length -1];
    [selDic setObject:funcName forKey:selName];
    
    return NSSelectorFromString(funcName);
}

#endif /* Header_h */
