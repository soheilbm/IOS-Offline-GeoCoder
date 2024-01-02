Pod::Spec.new do |s|
  s.name         = "IOS-Offline-GeoCoder"
  s.version      = "0.0.5"
  s.summary      = "An Offline Reverse GeoCoder for IOS."

  s.description  = <<-DESC
                   An Offline version of reverse Geo Code for IOS to retrieve Countries Name and ISO Codes.
                   DESC

  s.homepage     = "https://github.com/soheilbm/IOS-Offline-GeoCoder"
  s.license      = {:type => 'APACHE'}

  s.author       = { "Soheilbm" => "soheilbm@me.com" }

  s.platform     = :ios, '12.0'

  s.source = { :git => "https://github.com/soheilbm/IOS-Offline-GeoCoder.git", :tag => "v0.0.5"}

  s.source_files  = 'Classes/reverseGeoCoder.{h,m}'
  s.resources    = 'Classes/CountriesGeoCode.json'

  s.frameworks = 'Foundation', 'CoreLocation'

  s.requires_arc = true
end
