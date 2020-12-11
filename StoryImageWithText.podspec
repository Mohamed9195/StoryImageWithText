
Pod::Spec.new do |spec|

  spec.name         = "StoryImageWithText"
  spec.version      = "1.0.0"
  spec.summary      = "create story like facebook by text and background color for it."
  spec.description  = "by using this pod can enter text with (textColor and size) and choose back ground for it the convert all this to image."
  spec.homepage     = "https://github.com/Mohamed9195/StoryImageWithText"
  spec.license      = "MIT"
  spec.author       = { "Mohamed Hashem" => "mohamedabdalwahab588@gmail.com" }
  spec.social_media_url   = "https://www.linkedin.com/in/mohamed-hashem-AbdAlwahab/"
  spec.platform     = :ios, "12.0"
  spec.ios.deployment_target = "12.0"
  spec.source       = { :git => "https://github.com/Mohamed9195/StoryImageWithText.git", :tag => "#{spec.version}" }
  spec.swift_version = "4.2"
  spec.source_files  = "StoryImageWithText"
  spec.source_files = 'StoryImageWithText/**/*.swift'
end
