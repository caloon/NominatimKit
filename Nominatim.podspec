#
# Be sure to run `pod lib lint Nominatim.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Nominatim'
  s.version          = '0.9.0'
  s.summary          = 'A Swift wrapper for (reverse) geocoding of OpenStreetMap data'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Use NominatimKit to access OpenStreetMaps and the free Nominatim API to gather location data for a specific latitude, address or landmark.'

  s.homepage         = 'https://github.com/caloon/NominatimKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'caloon' => 'me@josefmoser.de' }
  s.source           = { :git => 'https://github.com/caloon/NominatimKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/josef_moser'

  s.ios.deployment_target = '9.3'

  s.source_files = 'Pods/Classes/Nominatim.swift'
  
  # s.resource_bundles = {
  #   'Nominatim' => ['Nominatim/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
