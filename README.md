# WebSocket 
根据 SocketRocket 封装的 webSocket 工具类

# 开启连接
[[SocketRocketTool instance] SRWebSocketOpenWithURLString: [NSString stringWithFormat:@"ws://服务器链接地址"]];

# 关闭连接
 [[SocketRocketTool instance]SRWebSocketClose];
 
# 发送数据
[[SocketRocketTool instance]sendData:];
