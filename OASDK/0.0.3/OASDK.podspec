
#
# Lib podspec
#
Pod::Spec.new do |s|
    
    s.name             = 'OASDK'
    s.version          = '0.0.3'
    s.summary          = 'A meaningful summary for lib'
    s.description      = <<-DESC
                        Lib is an iOS drop-in class.
                       DESC

    s.homepage         = 'https://gitee.com/mist'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'ChenJie' => 'app.mist@gmail.com' }
    s.source           = { :git => 'https://gitee.com/mist/OASDK.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    
    s.source_files = 'OASDK/*.{h,m}'

    # Base
    s.subspec 'Base' do |ss|
        ss.source_files = 'OASDK/Base/*.{h,m}'

        ss.subspec 'ColorExtension' do |sss|
            sss.source_files = 'OASDK/Base/ColorExtension/*.{h,m}'
            sss.dependency 'OASDK/Base/Vendor'
        end

        ss.subspec 'LazyGetter' do |sss|
            sss.source_files = 'OASDK/Base/LazyGetter/*.{h,m}'
        end
        
        ss.subspec 'StringExtension' do |sss|
            sss.source_files = 'OASDK/Base/StringExtension/*.{h,m}'
        end

        ss.subspec 'Vendor' do |sss|
            # sss.source_files = 'OASDK/Base/Vendor/*.{h,m}'

            sss.subspec 'MetaMacros' do |ssss|
                ssss.source_files = 'OASDK/Base/Vendor/MetaMacros/*.{h,m}'
            end
        end

        ss.subspec 'ViewExtension' do |sss|
            sss.source_files = 'OASDK/Base/ViewExtension/*.{h,m}'
            sss.dependency 'OASDK/Base/ColorExtension'

            sss.subspec 'ViewPosition' do |ssss|
                ssss.source_files = 'OASDK/Base/ViewExtension/ViewPosition/*.{h,m}'
            end
        end

    end

    # Component
    s.subspec 'Component' do |ss|
        ss.source_files = 'OASDK/Component/*.{h,m}'
    end

    # Layout
    s.subspec 'Layout' do |ss|
        ss.source_files = 'OASDK/Layout/*.{h,m}'
        ss.public_header_files = 'OASDK/Layout/*.h'
    end

    # Log
    s.subspec 'Log' do |ss|
        ss.source_files = 'OASDK/Log/*.{h,m}'
        ss.public_header_files = 'OASDK/Log/*.h'
    end

    # Networking
    s.subspec 'Networking' do |ss|
        ss.source_files = 'OASDK/Networking/*.{h,m}'
        ss.public_header_files = 'OASDK/Networking/*.h'
    end

    # # TableConfig
    # s.subspec 'TableConfig' do |ss|
    #     ss.source_files = 'OASDK/TableConfig/*.{h,m}'
    #     ss.public_header_files = 'OASDK/TableConfig/*.h'
    # end

    #
    # ColorExtension
    #
    # s.subspec 'ColorExtension' do |ss|
    #     ss.source_files = 'OASDK/ColorExtension/*.{h,m}'
    #     ss.public_header_files = 'OASDK/ColorExtension/*.h'
    #     ss.dependency 'OASDK/Vendor'
    # end
    
end


