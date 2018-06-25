import UIKit


class ViewControllerReset: UIViewController {
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    let userDefaults: UserDefaults = UserDefaults.standard
    
    
    

    override func viewDidAppear(_ animated: Bool) {
    }
    
    
    @IBOutlet weak var lavelSaisoku1: UILabel!
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        lavelSaisoku1.text = appDelegate.E
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 84/255, green: 232/255, blue: 193/255, alpha: 1)
    }
        
    @IBAction func ReSetButton(_ sender: Any) {
    
        
        appDelegate.A = 0
        appDelegate.B = 0
        appDelegate.C = 0
        
        appDelegate.D1a = 0
        appDelegate.D2a = 0
        appDelegate.D3a = 0
        appDelegate.D4a = 0
        appDelegate.D5a = 0
        
        appDelegate.D1b = 0
        appDelegate.D2b = 0
        appDelegate.D3b = 0
        appDelegate.D4b = 0
        appDelegate.D5b = 0
        
        appDelegate.D1c = 0
        appDelegate.D2c = 0
        appDelegate.D3c = 0
        appDelegate.D4c = 0
        appDelegate.D5c = 0
        
        appDelegate.D1d = 0
        appDelegate.D2d = 0
        appDelegate.D3d = 0
        appDelegate.D4d = 0
        appDelegate.D5d = 0
        
        appDelegate.D1e = 0
        appDelegate.D2e = 0
        appDelegate.D3e = 0
        appDelegate.D4e = 0
        appDelegate.D5e = 0
        
        appDelegate.D1f = 0
        appDelegate.D2f = 0
        appDelegate.D3f = 0
        appDelegate.D4f = 0
        appDelegate.D5f = 0
        
        appDelegate.D1g = 0
        appDelegate.D2g = 0
        appDelegate.D3g = 0
        appDelegate.D4g = 0
        appDelegate.D5g = 0
        
        appDelegate.aAll = 0
        appDelegate.bAll = 0
        appDelegate.cAll = 0
        appDelegate.dAll = 0
        appDelegate.eAll = 0
        appDelegate.fAll = 0
        appDelegate.gAll = 0
        
        appDelegate.E = ""
        appDelegate.D = ""
        
        userDefaults.set(appDelegate.C, forKey: "KEY_C")
        
        userDefaults.set(appDelegate.D1a, forKey: "D1a")
        userDefaults.set(appDelegate.D2a, forKey: "D2a")
        userDefaults.set(appDelegate.D3a, forKey: "D3a")
        userDefaults.set(appDelegate.D4a, forKey: "D4a")
        userDefaults.set(appDelegate.D5a, forKey: "D5a")
        
        userDefaults.set(appDelegate.D1b, forKey: "D1b")
        userDefaults.set(appDelegate.D2b, forKey: "D2b")
        userDefaults.set(appDelegate.D3b, forKey: "D3b")
        userDefaults.set(appDelegate.D4b, forKey: "D4b")
        userDefaults.set(appDelegate.D5b, forKey: "D5b")
        
        userDefaults.set(appDelegate.D1c, forKey: "D1c")
        userDefaults.set(appDelegate.D2c, forKey: "D2c")
        userDefaults.set(appDelegate.D3c, forKey: "D3c")
        userDefaults.set(appDelegate.D4c, forKey: "D4c")
        userDefaults.set(appDelegate.D5c, forKey: "D5c")
        
        userDefaults.set(appDelegate.D1d, forKey: "D1d")
        userDefaults.set(appDelegate.D2d, forKey: "D2d")
        userDefaults.set(appDelegate.D3d, forKey: "D3d")
        userDefaults.set(appDelegate.D4d, forKey: "D4d")
        userDefaults.set(appDelegate.D5d, forKey: "D5d")
        
        userDefaults.set(appDelegate.D1e, forKey: "D1e")
        userDefaults.set(appDelegate.D2e, forKey: "D2e")
        userDefaults.set(appDelegate.D3e, forKey: "D3e")
        userDefaults.set(appDelegate.D4e, forKey: "D4e")
        userDefaults.set(appDelegate.D5e, forKey: "D5e")
        
        userDefaults.set(appDelegate.D1f, forKey: "D1f")
        userDefaults.set(appDelegate.D2f, forKey: "D2f")
        userDefaults.set(appDelegate.D3f, forKey: "D3f")
        userDefaults.set(appDelegate.D4f, forKey: "D4f")
        userDefaults.set(appDelegate.D5f, forKey: "D5f")
        
        userDefaults.set(appDelegate.D1g, forKey: "D1g")
        userDefaults.set(appDelegate.D2g, forKey: "D2g")
        userDefaults.set(appDelegate.D3g, forKey: "D3g")
        userDefaults.set(appDelegate.D4g, forKey: "D4g")
        userDefaults.set(appDelegate.D5g, forKey: "D5g")
        
        userDefaults.set(appDelegate.aAll, forKey: "KEY_aAll")
        userDefaults.set(appDelegate.bAll, forKey: "KEY_bAll")
        userDefaults.set(appDelegate.cAll, forKey: "KEY_cAll")
        userDefaults.set(appDelegate.dAll, forKey: "KEY_dAll")
        userDefaults.set(appDelegate.eAll, forKey: "KEY_eAll")
        userDefaults.set(appDelegate.fAll, forKey: "KEY_fAll")
        userDefaults.set(appDelegate.gAll, forKey: "KEY_gAll")
    }
    
    
    

}
