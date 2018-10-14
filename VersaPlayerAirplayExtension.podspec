#
# Be sure to run `pod lib lint VersaPlayerAirplayExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VersaPlayerAirplayExtension'
  s.version          = '0.1.0'
  s.summary          = 'A VersaPlayer Extension to enable AirPlay.'
  s.description      = 'A VersaPlayer Extension to enable AirPlay functionality.'
  s.homepage         = 'https://github.com/josejuanqm/VersaPlayerAirplayExtension'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jose Quintero' => 'jose.juan.qm@gmail.com' }
  s.source           = { :git => 'https://github.com/josejuanqm/VersaPlayerAirplayExtension.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/josejuanqm'
  s.ios.deployment_target = '9.0'
  s.source_files = 'VersaPlayerAirplayExtension/Classes/**/*'
  s.dependency 'VersaPlayer'
  s.swift_version = '4'
end
