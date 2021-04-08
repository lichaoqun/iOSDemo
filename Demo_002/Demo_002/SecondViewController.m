//
//  SecondViewController.m
//  Demo_002
//
//  Created by QG on 2019/8/25.
//  Copyright © 2019 xinxianzhizao. All rights reserved.
//

#import "SecondViewController.h"
#import "QGMgr.h"
#import "QGAFNHelp.h"

@interface SecondViewController ()
@property(nonatomic, strong)QGMgr *tempMgr;
@property(nonatomic, weak)QGMgr *mgr;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.tempMgr = [[QGMgr alloc]init];
    self.tempMgr.vc = self;
    
//    [QGAFNHelp requestWithURL:nil complete:^{
//        NSLog(@"%@", self);
//    }];
    
    [QGAFNHelp requestWithURL1:nil dependsOn:self complete:^(id  _Nonnull self) {
                NSLog(@"tt callback_%@", self);

    }];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)dealloc{
    NSLog(@"tt====");
}
@end
