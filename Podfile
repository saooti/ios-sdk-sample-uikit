# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'SDKSampleUIKit' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'SaootiSDK', :git => 'https://<github_username>:<github_token>@github.com/saooti/ios-sdk.git'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
    end
  end
end