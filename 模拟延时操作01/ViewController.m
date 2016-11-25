//
//  ViewController.m
//  模拟延时操作01
//
//  Created by apple on 16/11/18.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    // 界面卡死（阻塞）
//    [self demo];
    [self performSelectorInBackground:@selector(demo) withObject:nil];

}
//1.循环的速度时非常快
//2.操作内存的栈空间，速度非常快
//3.操作内存的堆空间，速度有点慢
//4.循环非常消耗cpu资源
//5.I/O操作  速度非常慢
-(void)demo
{

    NSLog(@"begin");
    for (int i = 0; i<1000000; i++) {
    
//        int n = i;
//        NSString *str = @"hello";//存储在常量区
//        NSString *str = [NSString stringWithFormat:@"helloworld %d",i];
    NSLog(@"%d",i);
    }

    NSLog(@"end");
}


@end
