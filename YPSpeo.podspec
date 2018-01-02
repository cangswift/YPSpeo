#
#  Be sure to run `pod spec lint YPSpeo.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "YPSpeo"
  s.version      = "0.3.0"
  s.summary      = "Y.P.Speo"

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    s.description  = <<-DESC
    zhejiang pengfei
    DESC

    # 写入git私有库地址
    s.homepage     = "https://github.com"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "canghai" => "2235296471@qq.com" }
    s.source           = { :git => 'https://github.com/cangswift/YPComponent.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'

    s.subspec 'Category' do |category|
    category.source_files = 'YPSpeo/Classes/Category/*.*'
    # category.public_header_files = 'Pod/Classes/NetworkEngine/**/*.h'
    category.dependency 'SDWebImage'
    category.dependency 'GTMBase64'
    category.dependency 'MJRefresh'
    category.dependency 'Masonry'
    category.dependency 'YPSpeo/Macro'
    end

    s.subspec 'Macro' do |macro|
    macro.source_files = 'YPSpeo/Classes/Category/*.*'
    # category.public_header_files = 'Pod/Classes/NetworkEngine/**/*.h'
    end

    # 相互依赖
    s.subspec 'UI' do |ui|
    ui.source_files = 'YPSpeo/Classes/UI/*.*'
    # category.public_header_files = 'Pod/Classes/NetworkEngine/**/*.h'
    ui.dependency 'FLAnimatedImage'
    ui.dependency 'Masonry'
    ui.dependency 'YPSpeo/Category'
    ui.dependency 'YPSpeo/Macro'
    ui.dependency 'pop'
    ui.resource_bundles = {
    'UI_RES' => ['YPSPRE1/Assets/UI/*.*']
    }
    end

    s.subspec 'Base' do |base|
    base.source_files = 'YPSpeo/Classes/Base/*.*'
    base.dependency 'YPSpeo/Category'
    base.dependency 'YPSpeo/Macro'
    base.dependency 'YPSpeo/UI'

    base.resource_bundles = {
    'BASE_RES' => ['YPSpeo/Assets/Base/*.*']
    }
    # category.public_header_files = 'Pod/Classes/NetworkEngine/**/*.h'
    end

    s.subspec 'Router' do |router|
    router.source_files = 'YPSpeo/Classes/Router/*.*'
    router.dependency 'YPSpeo/Category'
    router.dependency 'YPSpeo/Macro'
    router.dependency 'YPSpeo/UI'
    router.dependency 'YPSpeo/Base'
    # category.public_header_files = 'Pod/Classes/NetworkEngine/**/*.h'
    end

    s.subspec 'Utils' do |utils|
    utils.source_files = 'YPSpeo/Classes/Utils/*.*'
    utils.dependency 'YPSpeo/Category'
    utils.dependency 'YPSpeo/Macro'
    # category.public_header_files = 'Pod/Classes/NetworkEngine/**/*.h'
    end

end
