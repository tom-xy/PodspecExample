Pod::Spec.new do |s|
    s.name             = 'EmbeddedPod'
    s.version          = '0.1.0'
    s.summary          = 'Embedded pod'
    s.description      = 'Pods with dependencies between.'

    s.homepage         = 'https://www.example.com'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Tom Yu' => 'yutao86@gmail.com' }
    s.source           = { :git => 'https://github.com/yutao86/PodspecExample.git' }

    s.ios.deployment_target = '11.0'
    s.default_subspec = 'Animal'
    
    s.subspec 'Animal' do |ss|
        ss.dependency 'EmbeddedPod/Plant'
        ss.source_files = 'Sources/Animal/*.{h,m}'
        ss.public_header_files = 'Sources/Animal/*.h'
    end
    
    s.subspec 'Plant' do |ss|
        ss.source_files = 'Sources/Plant/*.{h,m}'
        ss.public_header_files = 'Sources/Plant/*.h'
    end
end


