Pod::Spec.new do |spec|
  spec.name         = "Scanner"
  spec.version      = "1.0.0"
  spec.summary      = "A simple application to extract text from Images"
  spec.description  = <<-DESC
                    Scanner is a lightweight application that can be used to extract text from images in a super simple manner.
                   DESC
  spec.author       = { "VIBHOR MEHROTRA" => "vibhormehrotra02@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/vibhor-mehrotra/Scanner.git", :tag => "#{spec.version}" }
  spec.swift_version = "5.0"
end