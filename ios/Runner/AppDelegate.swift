import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let appIconChannel = FlutterMethodChannel(name: "appIconChannel", binaryMessenger: controller)
    
    appIconChannel.setMethodCallHandler({
        [weak self](call: FlutterMethodCall, result: FlutterResult) -> Void in
        guard call.method == "changeIcon" else {
            result(FlutterMethodNotImplemented)
            return
        }
        self?.changeAppIcon(call: call)
    })
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func changeAppIcon(call: FlutterMethodCall){
        if #available(iOS 10.3, *) {
            guard UIApplication.shared.supportsAlternateIcons else {
                return
            }
                
                let arguments : String = call.arguments as! String
                
                if arguments == "Blue" {
                    UIApplication.shared.setAlternateIconName("Blue")
                } else if arguments == "Red"{
                    UIApplication.shared.setAlternateIconName("Red")
                } else {
                    UIApplication.shared.setAlternateIconName(nil)
                }
                

        } else {
            // Fallback on earlier versions
        }
        
    }
}
