Pod::Spec.new do |s|
    s.name             = 'BundlePod'
    s.version          = '0.1.4'
    s.summary          = 'Bundle pod'
    s.description      = 'Bundle pod, which contains resources. '

    s.homepage         = 'https://www.example.com'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Tom Yu' => 'tom-xy@outlook.com' }
    s.source           = { :git => 'https://github.com/tom-xy/PodspecExample.git', :tag => s.version.to_s }

    s.ios.deployment_target = '11.0'
    
    # Folder mode
    # s.resource_bundles = { 'PodBundle' => ['Resources/Localizable', 'Resources/PodAssets.xcassets'] }
    
    # File mode
    s.resource_bundles = { 'PodBundle' => ['Resources/Localizable/**/*.strings', 'Resources/PodAssets.xcassets'] }
end
