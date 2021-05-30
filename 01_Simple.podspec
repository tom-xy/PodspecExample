Pod::Spec.new do |s|
    s.name             = 'SimplePod'
    s.version          = '0.1.0'
    s.summary          = 'Simple pod'
    s.description      = 'Simple pod, including source code files and headers.'

    s.homepage         = 'https://www.example.com'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Tom Yu' => 'yutao86@gmail.com' }
    s.source           = { :git => 'https://github.com/yutao86/PodspecExample.git' }

    s.ios.deployment_target = '11.0'
    s.source_files = 'Sources/Animal/*.{h,m}', 'Sources/Plant/*.{h,m}'
    s.public_header_files = 'Sources/Animal/*.h', 'Sources/Plant/*.h'
 
end
