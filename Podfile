# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'BatteryDemo' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
   pod 'SnapKit', '~> 3.0.2'
  # Pods for BatteryDemo
  #转swift3配置swift库的swift version = 3.0
  post_install do |installer|
      installer.pods_project.targets.each do |target|
          target.build_configurations.each do |config|
              config.build_settings['SWIFT_VERSION'] = '3.0'
          end
      end
  end
end
