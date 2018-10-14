//
//  ViewController.m
//  BlockTest
//
//  Created by xiafei on 2018/10/13.
//  Copyright © 2018年 com.xxx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,copy)void(^Block)(NSString *);
@property (nonatomic, copy) NSInteger (^MyBlock)(NSInteger);
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //12345678
    self.Block = ^(NSString *str) {
        NSLog(@"%@",str);
    };
    self.Block(@"123456");
    
    [self eat:^(NSString *sd) {
        NSLog(@"%@",sd);
    }];
    
    self.MyBlock = ^NSInteger(NSInteger a) {
        return a * a;
    };
 
    NSInteger res = self.MyBlock(4);
    NSLog(@"%ld",res);
    
    [self mult:^NSInteger(NSInteger a) {
        return 1;
    }];
}

-(void)eat:(void (^)(NSString *))food {
    food(@"cat");
}

- (void)mult:(NSInteger(^)(NSInteger))num {
    NSInteger re = num(9);
    NSLog(@"%ld",re);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
