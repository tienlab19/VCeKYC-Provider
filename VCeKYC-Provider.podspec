Pod::Spec.new do |s|
  s.name             = 'VCeKYC-Provider'
  s.version          = '2.0.0'
  s.summary          = 'VCeKYC Provider – eKYC integration framework for iOS (VCApp v2)'

  s.description      = <<-DESC
    VCeKYC-Provider cung cấp khả năng eKYC (electronic Know Your Customer) cho ứng dụng iOS,
    bao gồm nhận diện khuôn mặt, phát hiện liveness, nhận dạng ký tự quang học (OCR),
    đọc NFC và quét mã QR.
  DESC

  s.homepage         = 'https://github.com/tienlab19/vcekyc-provider'
  s.license          = { :type => 'Proprietary', :text => 'Copyright © 2024 VietCredit. All rights reserved.' }
  s.author           = { 'VietCredit' => 'trantan.tien@vietcredit.com.vn' }

  s.platform              = :ios, '13.0'
  s.ios.deployment_target = '13.0'
  s.swift_version         = '5.0'

  s.source = { :git => 'https://github.com/tienlab19/vcekyc-provider.git', :branch => 'eKYC-release-vcappv2' }

  s.source_files = 'Sources/VCeKYC-Provider/**/*.swift'

  s.vendored_frameworks = [
    'Sources/VFTeKYC.xcframework',
    'Sources/OpenSSL.xcframework'
  ]

  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '5.0'
  }
end
