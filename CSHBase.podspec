
Pod::Spec.new do |s|
  s.name             = 'CSHBase'
  s.version          = '0.2.0'
  s.summary          = '第二版'
  s.description      = <<-DESC
"改版本测试"
                       DESC

  s.homepage         = 'https://github.com/kentchen1991/CSHBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kentchen1991' => '492122973@qq.com' }
  s.source           = { :git => 'https://github.com/kentchen1991/CSHBase.git', :tag => "0.2.0" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CSHBase/Classes/**/*'
 
  s.dependency 'MJRefresh'
end
