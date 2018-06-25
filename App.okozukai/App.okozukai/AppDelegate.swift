import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var youbi: String = ""
    var syuppi: String = ""
    var value: Int = 0
    var value1: [Double] = [0, 0, 0, 0, 0]
    
    var A: Int = 0
    var B: Int = 0
    var C: Int = 0
    
    
//月曜日
    
    var B1a: Int = 0
    var B2a: Int = 0
    var B3a: Int = 0
    var B4a: Int = 0
    var B5a: Int = 0
    
    var C1a: Int = 0
    var C2a: Int = 0
    var C3a: Int = 0
    var C4a: Int = 0
    var C5a: Int = 0
    
    var D1a: Int = 0
    var D2a: Int = 0
    var D3a: Int = 0
    var D4a: Int = 0
    var D5a: Int = 0
    
    var E1a: Int = 0
    var E2a: Int = 0
    var E3a: Int = 0
    var E4a: Int = 0
    var E5a: Int = 0
    
    var F1a: Int = 0
    var F2a: Int = 0
    var F3a: Int = 0
    var F4a: Int = 0
    var F5a: Int = 0
    
    var aAll: Int = 0
    
    
//火曜日
    
    var B1b: Int = 0
    var B2b: Int = 0
    var B3b: Int = 0
    var B4b: Int = 0
    var B5b: Int = 0
    
    var C1b: Int = 0
    var C2b: Int = 0
    var C3b: Int = 0
    var C4b: Int = 0
    var C5b: Int = 0
    
    var D1b: Int = 0
    var D2b: Int = 0
    var D3b: Int = 0
    var D4b: Int = 0
    var D5b: Int = 0
    
    var E1b: Int = 0
    var E2b: Int = 0
    var E3b: Int = 0
    var E4b: Int = 0
    var E5b: Int = 0
    
    var F1b: Int = 0
    var F2b: Int = 0
    var F3b: Int = 0
    var F4b: Int = 0
    var F5b: Int = 0
    
    var bAll: Int = 0
    
    //水曜日
    
    var B1c: Int = 0
    var B2c: Int = 0
    var B3c: Int = 0
    var B4c: Int = 0
    var B5c: Int = 0
    
    var C1c: Int = 0
    var C2c: Int = 0
    var C3c: Int = 0
    var C4c: Int = 0
    var C5c: Int = 0
    
    var D1c: Int = 0
    var D2c: Int = 0
    var D3c: Int = 0
    var D4c: Int = 0
    var D5c: Int = 0
    
    var E1c: Int = 0
    var E2c: Int = 0
    var E3c: Int = 0
    var E4c: Int = 0
    var E5c: Int = 0
    
    var F1c: Int = 0
    var F2c: Int = 0
    var F3c: Int = 0
    var F4c: Int = 0
    var F5c: Int = 0
    
    var cAll: Int = 0
    
    //木曜日
    
    var B1d: Int = 0
    var B2d: Int = 0
    var B3d: Int = 0
    var B4d: Int = 0
    var B5d: Int = 0
    
    var C1d: Int = 0
    var C2d: Int = 0
    var C3d: Int = 0
    var C4d: Int = 0
    var C5d: Int = 0
    
    var D1d: Int = 0
    var D2d: Int = 0
    var D3d: Int = 0
    var D4d: Int = 0
    var D5d: Int = 0
    
    var E1d: Int = 0
    var E2d: Int = 0
    var E3d: Int = 0
    var E4d: Int = 0
    var E5d: Int = 0
    
    var F1d: Int = 0
    var F2d: Int = 0
    var F3d: Int = 0
    var F4d: Int = 0
    var F5d: Int = 0
    
    var dAll: Int = 0
    
    //金曜日
    
    var B1e: Int = 0
    var B2e: Int = 0
    var B3e: Int = 0
    var B4e: Int = 0
    var B5e: Int = 0
    
    var C1e: Int = 0
    var C2e: Int = 0
    var C3e: Int = 0
    var C4e: Int = 0
    var C5e: Int = 0
    
    var D1e: Int = 0
    var D2e: Int = 0
    var D3e: Int = 0
    var D4e: Int = 0
    var D5e: Int = 0
    
    var E1e: Int = 0
    var E2e: Int = 0
    var E3e: Int = 0
    var E4e: Int = 0
    var E5e: Int = 0
    
    var F1e: Int = 0
    var F2e: Int = 0
    var F3e: Int = 0
    var F4e: Int = 0
    var F5e: Int = 0
    
    var eAll: Int = 0
    
    //土曜日
    
    var B1f: Int = 0
    var B2f: Int = 0
    var B3f: Int = 0
    var B4f: Int = 0
    var B5f: Int = 0
    
    var C1f: Int = 0
    var C2f: Int = 0
    var C3f: Int = 0
    var C4f: Int = 0
    var C5f: Int = 0
    
    var D1f: Int = 0
    var D2f: Int = 0
    var D3f: Int = 0
    var D4f: Int = 0
    var D5f: Int = 0
    
    var E1f: Int = 0
    var E2f: Int = 0
    var E3f: Int = 0
    var E4f: Int = 0
    var E5f: Int = 0
    
    var F1f: Int = 0
    var F2f: Int = 0
    var F3f: Int = 0
    var F4f: Int = 0
    var F5f: Int = 0
    
    var fAll: Int = 0
    
    //日曜日
    
    var B1g: Int = 0
    var B2g: Int = 0
    var B3g: Int = 0
    var B4g: Int = 0
    var B5g: Int = 0
    
    var C1g: Int = 0
    var C2g: Int = 0
    var C3g: Int = 0
    var C4g: Int = 0
    var C5g: Int = 0
    
    var D1g: Int = 0
    var D2g: Int = 0
    var D3g: Int = 0
    var D4g: Int = 0
    var D5g: Int = 0
    
    var E1g: Int = 0
    var E2g: Int = 0
    var E3g: Int = 0
    var E4g: Int = 0
    var E5g: Int = 0
    
    var F1g: Int = 0
    var F2g: Int = 0
    var F3g: Int = 0
    var F4g: Int = 0
    var F5g: Int = 0
    
    var gAll: Int = 0
    
    var D: String = ""
    var E: String = ""
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
       
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
       
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
       
    }

    func applicationWillTerminate(_ application: UIApplication) {
       
    }


}

