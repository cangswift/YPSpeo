# YPSPRE
组件化私有库创建

2. pod repo add YPSPRE  https://github.com/cangswift/YPSPRE.git
3. 打开specs cd ~/.cocoapods/repos  open .
4. 创建podspec 文件   pod spec create YPSPRE
5. 打开podspec 文件 编辑

6.   s.subspec 'Category' do |category|
category.source_files = 'YPSpecsRepo/Classes/Category/*.*'
category.dependency 'SDWebImage'
category.dependency 'GTMBase64'
category.dependency 'MJRefresh'
category.dependency 'Masonry'
category.dependency 'YPSpecsRepo/Macro'
end

每个文件夹像这样建立

7.验证pod的正确性
pod spec lint YPSPRE.podspec --verbose --allow-warnings
验证通过之后，将其push到我们的私有Pod源仓库中去即可
pod repo push PrivateRepo YPSPRE.podspec --verbose --allow-warnings
