Pod::Spec.new do |s|
    s.name             = 'LibraryPod'
    s.version          = '0.1.0'
    s.summary          = 'Library pod'
    s.description      = 'Static librrary pod.'

    s.homepage         = 'https://www.example.com'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Tom Yu' => 'tom-xy@outlook.com' }
    s.source           = { :git => 'https://github.com/tom-xy/PodspecExample.git' }

    s.ios.deployment_target = '11.0'
    s.vendored_libraries = 'libMyStaticLibrary.a'
    s.source_files = 'Sources/Animal/*.h', 'Sources/Plant/*.h'
end
