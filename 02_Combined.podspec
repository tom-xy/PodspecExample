Pod::Spec.new do |s|
    s.name             = 'CombinedPod'
    s.version          = '0.1.0'
    s.summary          = 'Combined pod'
    s.description      = 'Two subpods.'

    s.homepage         = 'https://www.example.com'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Tom Yu' => 'tom-xy@outlook.com' }
    s.source           = { :git => 'https://github.com/tom-xy/PodspecExample.git' }

    s.ios.deployment_target = '11.0'
    s.default_subspec = 'Animal'
    
    s.subspec 'Animal' do |ss|
        ss.source_files = 'Sources/Animal/*.{h,m}'
        ss.public_header_files = 'Sources/Animal/*.h'
    end
    
    s.subspec 'Plant' do |ss|
        ss.source_files = 'Sources/Plant/*.{h,m}'
        ss.public_header_files = 'Sources/Plant/*.h'
    end
end

