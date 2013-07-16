Pod::Spec.new do |s|
  s.name     = 'moves-ios-sdk'
  s.version  = '0.0.1'
  s.platform = :ios,'6.0'
  s.license  = 'https://github.com/vitoziv/moves-ios-sdk/blob/master/LICENSE'
  s.summary  = 'Moves app SDK '
  s.homepage = 'https://github.com/vitoziv/moves-ios-sdk'
  s.author   = { 'Vito Zhang' => 'zhangwei.noair@gmail.com' }
  s.requires_arc = true
  s.source   = { :git => 'https://github.com/vitoziv/moves-ios-sdk.git' }
  s.source_files = 'moves-ios-sdk/*.{h,m}',
    'moves-ios-sdk/models/**/*.{h,m}',
    'moves-ios-sdk/3rdParty/mongoose/**/*.{h,c}'

  s.dependency 'AFNetworking'
end