Pod::Spec.new do |s|

  s.name         = "NNFramework"
  s.version      = "2.0.0"
  s.summary      = "This is NNFramework for learning purpose."
  s.description  = "This is a framework for accessing IBDesignable components that was made by me"
  s.homepage     = "https://github.com/NazifaNajish/NNFramework"
  s.license      = "MIT"
  s.author       = { "Nazifa" => "nazifanajish12@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/NazifaNajish/NNFramework.git", :tag => "2.0.0" }
  s.source_files  = "NNFramework/**/*.{h,m,swift}"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

end
