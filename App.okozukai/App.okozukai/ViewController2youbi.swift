import UIKit

class ViewController2youbi: UIViewController {
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func Youbi(_ sender: Any) {
       appDelegate.youbi = "月曜日"
        appDelegate.B = 1
    }
    @IBAction func youbi2(_ sender: Any) {
      appDelegate.youbi = "火曜日"
        appDelegate.B = 2
        
    }
    @IBAction func youbi3(_ sender: Any) {
       appDelegate.youbi = "水曜日"
        appDelegate.B = 3
        
    }
    @IBAction func youbi4(_ sender: Any) {
      appDelegate.youbi = "木曜日"
        appDelegate.B = 4
    }
    @IBAction func youbi5(_ sender: Any) {
       appDelegate.youbi = "金曜日"
        appDelegate.B = 5
    }
    @IBAction func youbi6(_ sender: Any) {
       appDelegate.youbi = "土曜日"
        appDelegate.B = 6
    }
    @IBAction func youbi7(_ sender: Any) {
       appDelegate.youbi = "日曜日"
        appDelegate.B = 7
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 84/255, green: 232/255, blue: 193/255, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

   

}
