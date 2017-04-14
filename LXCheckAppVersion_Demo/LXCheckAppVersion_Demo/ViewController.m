//
//  ViewController.m
//  LXCheckAppVersion_Demo
//
//  Created by linxiang on 2017/4/14.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "ViewController.h"

#import "LXCheckAppVersion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (IBAction)checkBtn:(id)sender {
    //创建一个并发队列
    dispatch_queue_t queue = dispatch_queue_create("myueue", DISPATCH_QUEUE_CONCURRENT);
    //创建异步任务
    dispatch_async(queue, ^{
        //点击按钮，开始检测
        [LXCheckAppVersion CheckAppVersion];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
