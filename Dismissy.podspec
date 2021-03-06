#
# Be sure to run `pod lib lint Dismissy.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Dismissy"
  s.version          = "0.1.0"
  s.summary          = "Dismissy is an objective-C category on UIViewController to add keyboard dismissing to all View Controllers."
  s.description      = <<-DESC
                       Dismissy is an objective-C category on UIViewController to add keyboard dismissing to all View
                       Controllers. It automatically resigns all first responders when a user taps outside any active
                       textfields.
                       DESC
  s.homepage         = "https://github.com/drmaj/Dismissy"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Miguel Alonso Jr." => "drmiguelalonsojr@gmail.com" }
  s.source           = { :git => "https://github.com/drmaj/Dismissy.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/DrMAJr'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'Dismissy' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'JRSwizzle'
end
