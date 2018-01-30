Pod::Spec.new do |s|
  s.name                  = "VirgilCryptoAPI"
  s.version               = "0.9.0"
  s.license               = { :type => "BSD", :file => "LICENSE" }
  s.summary               = "Set of crypto interfaces needed for Virgil products"
  s.homepage              = "https://github.com/VirgilSecurity/virgil-cryptoapi-x/"
  s.authors               = { "Virgil Security" => "https://virgilsecurity.com/" }
  s.source                = { :git => "https://github.com/VirgilSecurity/virgil-cryptoapi-x.git", :tag => s.version }
  s.platforms             = { :ios => "8.0", :osx => "10.10", :tvos => "9.0", :watchos => "2.0" }
  s.source_files          = 'Source/**/*.{swift}'
end