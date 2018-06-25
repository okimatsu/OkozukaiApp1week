import UIKit
import Charts

class ViewController: UIViewController {
    
    let userDefaults: UserDefaults = UserDefaults.standard
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var pieChartView: PieChartView!
    
    override func viewWillAppear(_ animated: Bool) {
        if userDefaults.integer(forKey: "KEY_C") == 1 {
            setupGraph()
            lavelTitile.text = "今週の出費"
            lavelSubTitile.text = ""
        } else {
            pieChartView.noDataText = ""
        }
    }
    
    @IBOutlet weak var lavelSubTitile: UILabel!
    
    @IBOutlet weak var lavelTitile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.backgroundColor = UIColor(red: 84/255, green: 232/255, blue: 193/255, alpha: 1)
    }
    
    func setupGraph() {
        
        pieChartView.drawHoleEnabled = false
        
        pieChartView.chartDescription?.text = ""
        
        
        appDelegate.aAll = userDefaults.integer(forKey: "KEY_aAll")
        appDelegate.bAll = userDefaults.integer(forKey: "KEY_bAll")
        appDelegate.cAll = userDefaults.integer(forKey: "KEY_cAll")
        appDelegate.dAll = userDefaults.integer(forKey: "KEY_dAll")
        appDelegate.eAll = userDefaults.integer(forKey: "KEY_eAll")
        appDelegate.fAll = userDefaults.integer(forKey: "KEY_fAll")
        appDelegate.gAll = userDefaults.integer(forKey: "KEY_gAll")
        
        switch appDelegate.B {
        case 1:
            appDelegate.aAll = appDelegate.D1a + appDelegate.D2a + appDelegate.D3a + appDelegate.D4a + appDelegate.D5a
            userDefaults.set(appDelegate.aAll, forKey: "KEY_aAll")
        case 2:
            appDelegate.bAll = appDelegate.D1b + appDelegate.D2b + appDelegate.D3b + appDelegate.D4b + appDelegate.D5b
            userDefaults.set(appDelegate.bAll, forKey: "KEY_bAll")
        case 3:
            appDelegate.cAll = appDelegate.D1c + appDelegate.D2c + appDelegate.D3c + appDelegate.D4c + appDelegate.D5c
            userDefaults.set(appDelegate.cAll, forKey: "KEY_cAll")
        case 4:
            appDelegate.dAll = appDelegate.D1d + appDelegate.D2d + appDelegate.D3d + appDelegate.D4d + appDelegate.D5d
            userDefaults.set(appDelegate.dAll, forKey: "KEY_dAll")
        case 5:
            appDelegate.eAll = appDelegate.D1e + appDelegate.D2e + appDelegate.D3e + appDelegate.D4e + appDelegate.D5e
            userDefaults.set(appDelegate.eAll, forKey: "KEY_eAll")
        case 6:
            appDelegate.fAll = appDelegate.D1f + appDelegate.D2f + appDelegate.D3f + appDelegate.D4f + appDelegate.D5f
            userDefaults.set(appDelegate.fAll, forKey: "KEY_fAll")
        case 7:
            appDelegate.gAll = appDelegate.F1g + appDelegate.D2g + appDelegate.D3g + appDelegate.D4g + appDelegate.D5g
            userDefaults.set(appDelegate.gAll, forKey: "KEY_gAll")
        default:
            break
        }
        
        
        
        
        let Int1 = userDefaults.integer(forKey: "KEY_aAll")
        let double1 = Double(Int1)
        let Int2 = userDefaults.integer(forKey: "KEY_bAll")
        let double2 = Double(Int2)
        let Int3 = userDefaults.integer(forKey: "KEY_cAll")
        let double3 = Double(Int3)
        let Int4 = userDefaults.integer(forKey: "KEY_dAll")
        let double4 = Double(Int4)
        let Int5 = userDefaults.integer(forKey: "KEY_eAll")
        let double5 = Double(Int5)
        let Int6 = userDefaults.integer(forKey: "KEY_fAll")
        let double6 = Double(Int6)
        let Int7 = userDefaults.integer(forKey: "KEY_gAll")
        let double7 = Double(Int7)
        
        
      
        
        
        
        var entries = [
            PieChartDataEntry(value: (double1), label: "月曜日"),
            PieChartDataEntry(value: (double2), label: "火曜日"),
            PieChartDataEntry(value: (double3), label: "水曜日"),
            PieChartDataEntry(value: (double4), label: "木曜日"),
            PieChartDataEntry(value: (double5), label: "金曜日"),
            PieChartDataEntry(value: (double6), label: "土曜日"),
            PieChartDataEntry(value: (double7), label: "日曜日"),
        ]
        
        if userDefaults.integer(forKey: "KEY_aAll") == 0 {
            entries[0] = PieChartDataEntry(value: 0, label: "")
        }
        
        if userDefaults.integer(forKey: "KEY_bAll") == 0 {
            entries[1] = PieChartDataEntry(value: 0, label: "")
        }
        
        if userDefaults.integer(forKey: "KEY_cAll") == 0 {
            entries[2] = PieChartDataEntry(value: 0, label: "")
        }
        
        if userDefaults.integer(forKey: "KEY_dAll") == 0 {
            entries[3] = PieChartDataEntry(value: 0, label: "")
        }
        
        if userDefaults.integer(forKey: "KEY_eAll") == 0 {
            entries[4] = PieChartDataEntry(value: 0, label: "")
        }
        
        if userDefaults.integer(forKey: "KEY_fAll") == 0 {
            entries[5] = PieChartDataEntry(value: 0, label: "")
        }
        
        if userDefaults.integer(forKey: "KEY_gAll") == 0 {
            entries[6] = PieChartDataEntry(value: 0, label: "")
        }
        
        let set = PieChartDataSet(values: entries, label: "")
        
        set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                      UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                      UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                      UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                      UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1),
                      UIColor(red: 115/255, green: 252/225, blue: 214/255, alpha: 1),
                      UIColor(red: 115/255, green: 253/225, blue: 255/255, alpha: 1))
        
        
        
        
        set.valueFont = UIFont.boldSystemFont(ofSize: 30)
        
        if appDelegate.aAll == 0 {
            
        }
        
        
        let chartData = PieChartData(dataSet: set)
        
        pieChartView.data = chartData
        
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
       
    }
    
}
