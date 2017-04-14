# LXCheckAppVersion
检测APP版本从而进行版本更新<br>



## 查询App Store上APP的信息<br>
```
https://itunes.apple.com/lookup?id=APP_ID
```

## 使用<br>
```
- (IBAction)checkBtn:(id)sender {
    //创建一个并发队列
    dispatch_queue_t queue = dispatch_queue_create("myueue", DISPATCH_QUEUE_CONCURRENT);
    //创建异步任务
    dispatch_async(queue, ^{
        //点击按钮，开始检测
        [LXCheckAppVersion CheckAppVersion];
    });
}
```


如有侵权，万分抱歉。请联系：<br>
邮箱：lionsom_lin@qq.com
