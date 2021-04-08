//
//  QGPerson.m
//  Demo_003
//
//  Created by QG on 2020/4/20.
//  Copyright © 2020 xinxianzhizao. All rights reserved.
//

#import "QGPerson.h"
#import "Header.h"

@implementation QGPerson


-(int)aa:(NSString *)xx aa:(int)aa rect:(CGRect)rect{
    NSLog(@"xx");
    return 1;
}

-(void)bb{
    NSLog(@"yy");
}

-(void)test:(SEL)selector{
    NSLog(@"11xx");
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        SEL s = shouldImplement2(self, aa:0 aa:0 rect:CGRectZero);
        [self test:s];
        shouldImplement2(self, bb);
        shouldImplement2(self, aa:0 aa:0 rect:CGRectZero);
        shouldImplement2(self, test:nil);
        

        
//        NSLog(@"change 前 : %@", str);
//        [self chanageValue:str];
//        NSLog(@"chanageValue 后 : %@", str);
//        [self chanageValue1:&str];
//        NSLog(@"chanageValue1 后 : %@", str);
    }
    return self;
}

-(void)chanageValue:(NSString *)str{
    str = @"newValue";
}


-(void)chanageValue1:(NSString **)str{
    *str = @"newValue";
}
@end
