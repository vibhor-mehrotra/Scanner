Pod::Spec.new do |spec|
  spec.name         = "Scanner"
  spec.version      = "1.0.0"
  spec.summary      = "A simple application to extract text from Images"
  spec.description  = <<-DESC
                    Scanner is a lightweight application that can be used to extract text from images in a super simple manner.
                   DESC
  spec.homepage     = "https://github.com/vibhor-mehrotra/Scanner"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "VIBHOR MEHROTRA" => "vibhormehrotra02@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/vibhor-mehrotra/Scanner.git", :tag => "#{spec.version}" }
  spec.source_files = "Scanner/*.{swift}"
  spec.resources = "Scanner/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
  spec.swift_version = "5.0"
end