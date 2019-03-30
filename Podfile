platform :ios, '9.0'

target 'IUT Mobile' do

  use_frameworks!

  # Pods for Todoey

pod 'SpreadsheetView'
pod 'Firebase'
pod 'Alamofire'
pod 'SwiftyJSON'
pod 'Firebase/Auth'
pod 'Firebase/Database'
pod 'Firebase/Core'
pod 'Firebase/Messaging'
pod 'Firebase/InAppMessagingDisplay'
pod 'SVProgressHUD'
pod 'ChameleonFramework/Swift', :git => 'https://github.com/ViccAlexander/Chameleon.git'
pod 'RealmSwift'
pod 'SwipeCellKit'

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
end
