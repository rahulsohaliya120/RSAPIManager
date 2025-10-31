Pod::Spec.new do |s|
  s.name             = 'RSAPIManager'
  s.version          = '1.1.0'
  s.summary          = 'A reusable Swift API Manager using Alamofire with GET, POST, PUT, DELETE, and Multipart support.'
  s.description      = <<-DESC
A reusable Swift API Manager built on top of Alamofire, supporting GET, POST, PUT, DELETE, and Multipart API calls 
with flexible encodings, loaders, and error handling. Ideal for modular networking layers in iOS apps.
  DESC

  s.homepage         = 'https://github.com/rahulsohaliya120/RSAPIManager'
  s.license          = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author           = { 'Rahul Sohaliya' => 'rahulsohaliya.software@gmail.com' }
  s.source           = { :git => 'https://github.com/rahulsohaliya120/RSAPIManager.git', :tag => s.version.to_s }

  s.ios.deployment_target = '16.0'
  s.swift_versions   = ['5.7', '5.8', '5.9']

  s.source_files     = 'Sources/**/*.{swift}'
  s.dependency       'Alamofire', '>= 5.8.0'

  s.frameworks       = 'UIKit', 'SwiftUI'
end
