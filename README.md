金山云播放器项目已经废弃 适配xcode10 没有同步cocoapods
这里自己推了一个上去 方便使用
Pod的使用方式
默认的子模块是KSYMediaPlayer_live，也就是说Podfile中直接填写
```
 pod 'KSYPlayer_Box’
```
等同于
```
 pod 'KSYPlayer_Box/KSYMediaPlayer_live'
```

如果您希望通过pod方式引用点播库，那么需要在podfile这样写：
```
 pod 'KSYPlayer_Box/KSYMediaPlayer_vod'
```
https://github.com/ksvc/KSYMediaPlayer_iOS
这是金山云自己播放器地址
