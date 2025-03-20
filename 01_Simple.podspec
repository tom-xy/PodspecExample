Pod::Spec.new do |s|
    s.name             = 'SimplePod'
    s.version          = '0.1.0'
    s.summary          = 'Simple pod'
    s.description      = 'Simple pod, including source code files and headers.'

    s.homepage         = 'https://www.example.com'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Tom Yu' => 'tom-xy@outlook.com' }
    s.source           = { :git => 'https://github.com/tom-xy/PodspecExample.git' }

    s.module_name = 'SimplePod'
    s.ios.deployment_target = '11.0'
    s.source_files = 'Sources/Animal/*.{h,m}', 'Sources/Plant/*.{h,m}'
    s.public_header_files = 'Sources/Animal/*.h', 'Sources/Plant/*.h'

    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES',
      'CLANG_ENABLE_MODULES' => 'YES'
    }
end
