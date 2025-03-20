Pod::Spec.new do |s|
    s.name             = 'ResourcedPod'
    s.version          = '0.1.2'
    s.summary          = 'Resourced pod'
    s.description      = 'Resourced pod.'

    s.homepage         = 'https://www.example.com'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Tom Yu' => 'tom-xy@outlook.com' }
    s.source           = { :git => 'https://github.com/tom-xy/PodspecExample.git' }

    s.ios.deployment_target = '11.0'
    s.source_files = 'Sources/Animal/*.{h,m}', 'Sources/Plant/*.{h,m}', 'Sources/PodResource/*.{h,m}'
    s.public_header_files = 'Sources/Animal/*.h', 'Sources/Plant/*.h', 'Sources/PodResource/*.h'
    s.resources = 'Resources/Localizable/**/*', 'Resources/PodAssets.xcassets'

end
