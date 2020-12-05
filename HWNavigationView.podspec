
Pod::Spec.new do |spec|

  spec.name         = "HWNavigationView"
  spec.version      = "1.0.3"
  spec.license      = 'MIT'
  spec.summary      = "Depending on the offset of the scroll, the navigation can be changed."
  spec.homepage     = "https://github.com/HanweeeeLee/HWNavigationView"
  spec.author             = { "hanwe lee" => "mobiledev@kakao.com" }
  spec.source       = { :git => "https://github.com/HanweeeeLee/HWNavigationView.git", :tag => "1.0.3" }

  spec.platform = :ios, "11.0"

  spec.swift_version   = '5.0'

  spec.source_files  = 'HWNavigationView/**/*.{h,m,swift}'
  
  spec.description  = <<-DESC
Navigation view whose shape changes depending on the scroll position
                   DESC
  
  spec.exclude_files = "Classes/Exclude"

end

