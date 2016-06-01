
Pod::Spec.new do |s|
  s.name             = 'CSHBase'
  s.version          = '0.1.0'
  s.summary          = '做下简介'
  s.description      = <<-DESC
"这里在简介下，要比summary长"
                       DESC

  s.homepage         = 'https://github.com/kentchen1991/CSHBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kentchen1991' => '492122973@qq.com' }
  s.source           = { :git => 'https://github.com/kentchen1991/CSHBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CSHBase/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CSHBase' => ['CSHBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'MJRefresh'
end
