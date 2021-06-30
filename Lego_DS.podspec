
Pod::Spec.new do |s|
  s.name        = 'Lego_DS'
  s.version     = '0.1.0'
  s.summary     = 'A desing system framework.'
  s.description = 'Use this framework to take full advantage of our powerfulls components.'

  s.homepage = 'https://github.com/SpessotoVitor97/Lego_DS'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.author   = { 'Vitor Spessoto' => 'spessoto97@icloud.com' }
  s.source   = { :git => 'https://github.com/SpessotoVitor97/Lego_DS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.source_files = 'Lego_DS/Classes/**/*'
  s.resources = ['Lego_DS/Resources/Images/*', 'Lego_DS/Resources/Fonts/*']
  s.resource_bundles = {'Lego_DS' => ['Lego_DS/Assets/**/*']}
  
  s.vendored_frameworks = 'Lego_DS.xcframework'

end
