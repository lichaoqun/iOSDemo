//
//  main.m
//  Demo_003
//
//  Created by QG on 2019/8/29.
//  Copyright © 2019 xinxianzhizao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QGPerson.h"

struct AAA {
    uint64 i1;
    uint8 i2;
};

struct BBB {
    uint8 i2;
    struct AAA a1;
};


struct CCC {
    uint8 i2;
    struct BBB b1;
};



int main(int argc, const char * argv[]) {
    @autoreleasepool {
                
        
        
//        char a = 'A';
//        int c = 0x11121314;
//        short b = 0x0102;
//        long d = 0x2122232425262728;

//        struct AAA a = {0x0102030405060708, 0x11};
//        struct BBB b= {0x22, a};
        struct CCC c = {0x33, {0}};

//
//        char x1 = 'x';
//
//        char x2= 'x';
//
//        char x3 = 'x';
//
//        char x4 = 'x';
//        int x5 = 0x11223344;
//
//        NSLog(@"%d===%d===%d", sizeof(a), sizeof(b), sizeof(c));

    }
    return 0;
}
