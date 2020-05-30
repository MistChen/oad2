
#
# Lib podspec
#
Pod::Spec.new do |s|
    
    s.name             = 'OASDK'
    s.version          = '0.0.2'
    s.summary          = 'A meaningful summary for lib'
    s.description      = <<-DESC
                        Lib is an iOS drop-in class.
                       DESC

    s.homepage         = 'https://gitee.com/mist'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'ChenJie' => 'app.mist@gmail.com' }
    s.source           = { :git => 'https://gitee.com/mist/OASDK.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'

    s.source_files = 'OASDK/OASDK.h'

    #
    # Vendor
    #
    s.subspec 'Vendor' do |ss|
        ss.source_files = 'OASDK/Vendor/*.{h,m}'
    end

    #
    # ColorExtension
    #
    s.subspec 'ColorExtension' do |ss|
        ss.source_files = 'OASDK/ColorExtension/*.{h,m}'
        ss.public_header_files = 'OASDK/ColorExtension/*.h'
        ss.dependency 'OASDK/Vendor'
    end

    #
    # Networking
    #
    s.subspec 'Networking' do |ss|
        ss.source_files = 'OASDK/Networking/*.{h,m}'
        ss.public_header_files = 'OASDK/Networking/*.h'
    end

    #
    # ViewPositonExtension
    #
    s.subspec 'ViewPositonExtension' do |ss|
        ss.source_files = 'OASDK/ViewPositonExtension/*.{h,m}'
    end
    
end


