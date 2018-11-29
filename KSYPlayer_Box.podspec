Pod::Spec.new do |s|
  s.name         = 'KSYPlayer_Box'
  s.version      = '1.0.0'
  s.license      = {
:type => 'Proprietary',
:text => <<-LICENSE
      Copyright 2015 kingsoft Ltd. All rights reserved.
      LICENSE
  }
  s.homepage     = 'http://v.ksyun.com/doc.html'
  s.authors      = { 'Jingliang' => 'dzjingliang@163.com' }
  s.summary      = 'KSYPlayer_Box sdk manages the playback of a movie or live streaming.'
  s.description  = <<-DESC
   			 KSYPlayer_Box 是一个金山云播放器适配
  			DESC
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.frameworks   = 'VideoToolbox'
  s.ios.library = 'z', 'iconv', 'c++', 'bz2'
  s.source = {
	  :git => 'https://github.com/dzliangjing/KSYPlayer_Box.git', 
	  :tag => s.version
  }
 
  s.default_subspec = 'KSYMediaPlayer_live'

  s.subspec 'KSYMediaPlayer_live'  do |sub| 
    sub.vendored_frameworks = 'framework/live/KSYMediaPlayer.framework'
  end
  
#   s.subspec 'KSYMediaPlayer_live_dy'  do |sub| 
#     sub.vendored_frameworks = 'framework/live_dy/KSYMediaPlayer.framework'
#   end
  
  s.subspec 'KSYMediaPlayer_vod'  do |sub| 
    sub.vendored_frameworks = 'framework/vod/KSYMediaPlayer.framework'
  end

#   s.subspec 'KSYMediaPlayer_vod_dy'  do |sub| 
#     sub.vendored_frameworks = 'framework/vod_dy/KSYMediaPlayer.framework'
#   end
end
