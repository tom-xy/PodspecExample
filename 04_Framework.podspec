Pod::Spec.new do |s|
    s.name             = 'FrameworkPod'
    s.version          = '0.1.0'
    s.summary          = 'Framework pod'
    s.description      = 'Dynamic framework pod.'

    s.homepage         = 'https://www.example.com'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Tom Yu' => 'tom-xy@outlook.com' }
    s.source           = { :git => 'https://github.com/tom-xy/PodspecExample.git' }

    s.ios.deployment_target = '11.0'
    s.vendored_frameworks = 'MyFramework.framework'
end
