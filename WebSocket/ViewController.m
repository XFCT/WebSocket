//
//  ViewController.m
//  WebSocket
//
//  Created by 五月同辉 on 2018/8/7.
//  Copyright © 2018年 xfc. All rights reserved.
//

#import "ViewController.h"
#import "SocketRocketTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SRWebSocketDidOpen) name:kWebSocketDidOpenNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SRWebSocketDidReceiveMsg:) name:kWebSocketdidReceiveMessageNotification object:nil];
    
    [[SocketRocketTool instance] SRWebSocketOpenWithURLString: [NSString stringWithFormat:@"ws://websocket"]];
    
}

- (void)SRWebSocketDidOpen {
    NSLog(@"开启成功");
    //在成功后需要做的操作。。。
}

- (void)SRWebSocketDidReceiveMsg:(NSNotification *)note {
    //收到服务端发送过来的消息
    [[SocketRocketTool instance] SRWebSocketClose];//在需要得地方 关闭socket
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
