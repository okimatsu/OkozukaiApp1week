import UIKit

class ViewController3syuppi: UIViewController {
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    @IBOutlet weak var syuppi3Lavel: UILabel!
    
    
    
    
    @IBAction func syokuhi(_ sender: Any) {
       appDelegate.syuppi = "食費"
        appDelegate.A = 1
    }
    
    @IBAction func zappi(_ sender: Any) {
       appDelegate.syuppi = "雑費"
        appDelegate.A = 2
    }
    
    @IBAction func koutsuuhi(_ sender: Any) {
       appDelegate.syuppi = "交通費"
        appDelegate.A = 3
        
    }
    
    @IBAction func kouyuuhi(_ sender: Any) {
       appDelegate.syuppi = "交遊費"
        appDelegate.A = 4
        
    }
    
    @IBAction func sonota(_ sender: Any) {
       appDelegate.syuppi = "その他"
        appDelegate.A = 5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      // syuppi3Lavel.text = appDelegate.youbi
        
        switch appDelegate.B {
        case 1:
            syuppi3Lavel.text = "月曜日"
        case 2:
            syuppi3Lavel.text = "火曜日"
        case 3:
            syuppi3Lavel.text = "水曜日"
        case 4:
            syuppi3Lavel.text = "木曜日"
        case 5:
            syuppi3Lavel.text = "金曜日"
        case 6:
            syuppi3Lavel.text = "土曜日"
        case 7:
            syuppi3Lavel.text = "日曜日"
            
        default:
            syuppi3Lavel.text = ""
        }
        view.backgroundColor = UIColor(red: 84/255, green: 232/255, blue: 193/255, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewDidLoad()
    }

}
