Pod::Spec.new do |s|
  s.name             = "ReusableKit-Hi"
  s.version          = "3.0.0-v4"
  s.summary          = "Generic reusables for Cocoa."
  s.homepage         = "https://github.com/tospery/ReusableKit-Hi"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => "https://github.com/tospery/ReusableKit-Hi.git",
                         :tag => s.version.to_s }
  s.frameworks       = 'UIKit', 'Foundation'
  s.requires_arc     = true
  s.swift_version    = "5.0"

  s.ios.deployment_target = "11.0"

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files = "Sources/ReusableKit/*.swift"
  end

  s.subspec "RxSwift" do |ss|
    ss.source_files = "Sources/RxReusableKit/*.swift"
    ss.dependency "ReusableKit-Hi/Core"
    ss.dependency "RxSwift", "~> 6.0"
    ss.dependency "RxCocoa", "~> 6.0"
  end
end
