Pod::Spec.new do |s|
  s.name                  = "VirgilCryptoAPI"
  s.version               = "0.9.0"
  s.summary               = "Virgil Crypto API for Apple devices and languages."
  s.cocoapods_version     = ">= 0.36"
  s.homepage              = "https://github.com/VirgilSecurity/virgil-cryptoapi-x/"
  s.license               = { :type => "BSD", :file => "LICENSE" }
  s.author                = { "Oleksandr Deundiak" => "deundiak@gmail.com" }
  s.platforms             = { :ios => "8.0", :osx => "10.10", :tvos => "9.0", :watchos => "2.0" }
  s.source                = { :git => "https://github.com/VirgilSecurity/virgil-cryptoapi-x.git",
                              :tag => s.version }
  s.weak_frameworks       = 'Foundation'
  s.module_name           = 'VirgilCryptoAPI'
  s.source_files          = 'Source/**/*.{swift}'
  s.requires_arc          = true
end