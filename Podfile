# Uncomment this line to define a global platform for your project
platform :ios, '11.0'

def apply_pods
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  inhibit_all_warnings!

  pod 'AXRatingView'
  pod 'ActionKit'
  pod 'CWStatusBarNotification'
  pod 'Cache', :git => "https://github.com/farktronix/Cache.git" # https://github.com/hyperoslo/Cache/pull/232, https://github.com/hyperoslo/Cache/pull/236
  pod 'ChameleonFramework', :git => "https://github.com/farktronix/Chameleon.git" # https://github.com/viccalexander/Chameleon/pull/234
  pod 'CleanroomLogger', :git => "https://github.com/farktronix/CleanroomLogger" # Needed because the authors refuse to add CocoaPods support https://github.com/emaloney/CleanroomLogger/issues/69
  pod 'Crashlytics'
  pod 'CSwiftV', :git => 'https://github.com/farktronix/CSwiftV.git', :branch => 'Swift5' # https://github.com/Daniel1of1/CSwiftV/pull/40
  pod 'DownloadButton', :git => "https://github.com/farktronix/DownloadButton" # Temporary fork to fix a progress over/underflow bug
  pod 'EDColor'
  pod 'Fabric'
  pod 'FastImageCache', :git => "https://github.com/mallorypaine/FastImageCache.git" # The new official fork
  pod 'FaveButton', :git => "https://github.com/farktronix/fave-button.git" # Waiting on https://github.com/xhamr/fave-button/pull/42
  pod 'KASlideShow'
  pod 'LastFm', :git => "https://github.com/farktronix/LastFm.git" # Waiting on https://github.com/gangverk/LastFm/pull/20
  pod 'LicensesViewController', :git => "https://github.com/tsukisa/LicenseGenerator-iOS.git"
  pod 'MZDownloadManager', :git => 'https://github.com/farktronix/MZDownloadManager' # Waiting on https://github.com/mzeeshanid/MZDownloadManager/pull/81
  pod 'NAKPlaybackIndicatorView'
  pod 'NapySlider', :git => "https://github.com/farktronix/NapySlider.git" # https://github.com/seeppp/NapySlider/pull/16
  pod 'Observable', :git => "https://github.com/alecgorge/Observable.git" # Adds thread safety. This should be submitted upstream as a PR
  pod 'PathKit'
  pod 'PinpointKit'
  pod 'PinpointKit/ScreenshotDetector'
  pod 'RealmSwift'
  pod 'RealmConverter', :git => "https://github.com/farktronix/realm-cocoa-converter.git" # https://github.com/realm/realm-cocoa-converter/pull/56
  pod 'SDCloudUserDefaults'
  pod 'SINQ'
  pod 'SVProgressHUD'
  pod 'Siesta/Core', :git => 'https://github.com/bustoutsolutions/siesta.git'
  pod 'Siesta/UI', :git => 'https://github.com/bustoutsolutions/siesta.git'
  pod 'SwiftyJSON'

  # Using a fork of Texture until these land: 
  #  https://github.com/TextureGroup/Texture/pull/1354
  #  https://github.com/TextureGroup/Texture/pull/1425
  pod 'Texture/Core', :git => 'https://github.com/farktronix/Texture.git'
  pod 'Texture/MapKit', :git => 'https://github.com/farktronix/Texture.git'
 
  # Development pods (checked out locally)
  if ENV['TRAVIS']
      pod 'BASSGaplessAudioPlayer', :path => 'TravisPods/BASSGaplessAudioPlayer'
      pod 'AGAudioPlayer', :path => 'TravisPods/AGAudioPlayer'
  else
      pod 'BASSGaplessAudioPlayer', :path => '../BASSGaplessAudioPlayer'
      pod 'AGAudioPlayer', :path => '../AGAudioPlayer'
  end

  # Debug Pods
  pod 'Reveal-SDK', :configurations => ['Debug']
  # https://github.com/pmusolino/Wormholy/pull/52
  pod 'Wormholy', :configurations => ['Debug'], :git => 'https://github.com/iiiCeBlink/Wormholy.git', :branch => 'dev-load'
  pod 'DWURecyclingAlert', :configurations => ['Debug']

  # Currently unused pods (but they might be used in the future)
  # pod 'AsyncSwift'
  # pod 'BFNavigationBarDrawer'
  # pod 'Reachability'
  # pod 'SpinnerView'

end

target 'RelistenShared' do
  apply_pods
end

target 'Relisten for Phish' do
  apply_pods
end

target 'PhishODUITests' do 
  apply_pods
end

target 'Relisten' do
  apply_pods
end

target 'RelistenUITests' do
  apply_pods
  pod 'SimulatorStatusMagic'
end

target 'RelistenScreenshots' do
  apply_pods
  pod 'SimulatorStatusMagic'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
  end
end
