Pod::Spec.new do |spec|
  spec.name         = 'KSYPlayer_Box'
  spec.version      = '1.0.0'
  spec.license      = {
:type => 'Proprietary',
:text => <<-LICENSE
      Copyright 2015 kingsoft Ltd. All rights reserved.
      LICENSE
  }
  spec.homepage     = 'http://v.ksyun.com/doc.html'
  spec.authors      = { 'Jingliang' => 'dzjingliang@163.com' }
  spec.summary      = 'KSYPlayer_Box sdk manages the playback of a movie or live streaming.'
  spec.description  = <<-DESC
    KSYPlayer_Box 是一个金山云播放器适配
  DESC
  spec.platform     = :ios, '7.0'
  spec.requires_arc = true
  spec.frameworks   = 'VideoToolbox'
  spec.ios.library = 'z', 'iconv', 'c++', 'bz2'
  spec.source = {
	  :git => 'https://github.com/dzliangjing/KSYPlayer_Box.git', 
	  :tag => 'v'+spec.version.to_s
  }
 
  spec.default_subspec = 'KSYMediaPlayer_live'

  spec.subspec 'KSYMediaPlayer_live'  do |sub| 
    sub.vendored_frameworks = 'framework/live/KSYMediaPlayer.framework'
  end
  
#   spec.subspec 'KSYMediaPlayer_live_dy'  do |sub| 
#     sub.vendored_frameworks = 'framework/live_dy/KSYMediaPlayer.framework'
#   end
  
  spec.subspec 'KSYMediaPlayer_vod'  do |sub| 
    sub.vendored_frameworks = 'framework/vod/KSYMediaPlayer.framework'
  end

#   spec.subspec 'KSYMediaPlayer_vod_dy'  do |sub| 
#     sub.vendored_frameworks = 'framework/vod_dy/KSYMediaPlayer.framework'
#   end
end
