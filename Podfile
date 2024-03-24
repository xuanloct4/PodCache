# Uncomment the next line to define a global platform for your project
#platform :ios, '14.0'
#use_frameworks!

plugin "cocoapods-binary-cache"
#plugin 'cocoapods-binary'

config_cocoapods_binary_cache(
  cache_repo: {
    "default" => {
      "remote" => "https://github.com/xuanloct4/Cache.git",
      "local" => "~/.cocoapods-binary-cache/prebuilt-frameworks"
    }
  },
  prebuild_config: "Debug",
  xcframework: true
)

target 'PodCache' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

	pod "Alamofire", :binary => true
  pod "AFNetworking", :binary => true
  pod "SnapKit", :binary => true
  pod "SDWebImage", :binary => true
  pod "MBProgressHUD", :binary => true
  pod "Masonry", :binary => true
  pod "SwiftyJSON", :binary => true
  pod "SVProgressHUD", :binary => true
  pod "MJRefresh", :binary => true
  pod "CocoaLumberjack", :binary => true
#  pod "Realm", :binary => true
  pod "Kingfisher", :binary => true


  target 'PodCacheTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'PodCacheUITests' do
    # Pods for testing
  end

end


post_install do |installer|
    installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
            end
        end
    end
end
