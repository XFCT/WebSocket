//
//  SocketRocketTool.h
//  WebSocket
//
//  Created by 五月同辉 on 2018/8/13.
//  Copyright © 2018年 xfc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SocketRocket.h>

extern NSString * const kNeedPayOrderNotification;
extern NSString * const kWebSocketDidOpenNotification;
extern NSString * const kWebSocketDidCloseNotification;
extern NSString * const kWebSocketdidReceiveMessageNotification;

@interface SocketRocketTool : NSObject

// 获取Socket连接状态
@property (nonatomic,assign,readonly) SRReadyState socketReadyState;

+ (SocketRocketTool *)instance;
//开启连接
-(void)SRWebSocketOpenWithURLString:(NSString *)urlString;
//关闭连接
-(void)SRWebSocketClose;
//发送数据
- (void)sendData:(id)data;

@end
