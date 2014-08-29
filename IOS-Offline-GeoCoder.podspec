Pod::Spec.new do |s|
  s.name         = "IOS-Offline-GeoCoder"
  s.version      = "0.0.1"
  s.summary      = "An Offline Reverse GeoCoder for IOS "
  s.description  = <<-DESC
                   An Offline version of reverse Geo Code for IOS to retrieve Countries Name and ISO Codes 
                   DESC
  s.homepage     = "https://github.com/soheilbm/IOS-Offline-GeoCoder"
  s.license      = "Apache"
  s.author       = { "Soheilbm" => "soheilbm@me.com" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/soheilbm/IOS-Offline-GeoCoder", :tag => "0.0.1" }
  s.source_files = "Classes/*",
  s.frameworks   = ['Foundation','CoreLocation']
  s.requires_arc = true
end
