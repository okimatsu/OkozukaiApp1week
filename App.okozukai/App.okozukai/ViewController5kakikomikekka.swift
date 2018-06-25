import UIKit
import Charts

class ViewController5kakikomikekka: UIViewController {
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    let userDefaults: UserDefaults = UserDefaults.standard
    
    
    @IBOutlet weak var youbiLavel4: UILabel!
    
    @IBOutlet weak var syuppiLavel3: UILabel!
    
    @IBOutlet weak var dentakuLavel2: UILabel!
    
    @IBOutlet weak var pieChartView2: PieChartView!
    
    @IBAction func modoru(_ sender: Any) {
        
    }
    func setupGraph2() {
        pieChartView2.drawHoleEnabled = false
        switch appDelegate.B {
        case 1: //月曜日
            switch appDelegate.A {
         case 1: //食費
            appDelegate.D1a = userDefaults.integer(forKey: "D1a")
            
             appDelegate.B1a = appDelegate.value
             appDelegate.C1a = appDelegate.D1a
             appDelegate.D1a = appDelegate.C1a + appDelegate.B1a
            
            userDefaults.set(appDelegate.D1a, forKey: "D1a")
            
             let Int1 = userDefaults.integer(forKey: "D1a")
             let double1 = Double(Int1)
             let Int2 = userDefaults.integer(forKey: "D2a")
             let double2 = Double(Int2)
             let Int3 = userDefaults.integer(forKey: "D3a")
             let double3 = Double(Int3)
             let Int4 = userDefaults.integer(forKey: "D4a")
             let double4 = Double(Int4)
             let Int5 = userDefaults.integer(forKey: "D5a")
             let double5 = Double(Int5)
             
            var entries = [
                PieChartDataEntry(value: (double1), label: "食費"),
                PieChartDataEntry(value: (double2), label: "雑費"),
                PieChartDataEntry(value: (double3), label: "交通費"),
                PieChartDataEntry(value: (double4), label: "交遊費"),
                PieChartDataEntry(value: (double5), label: "その他"),
                ]
            
            if userDefaults.integer(forKey: "D1a") == 0 {
                entries[0] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D2a") == 0 {
                entries[1] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D3a") == 0 {
                entries[2] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D4a") == 0 {
                entries[3] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D5a") == 0 {
                entries[4] = PieChartDataEntry(value: 0, label: "")
            }
             
             let set = PieChartDataSet(values: entries, label: "")
             
             set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                           UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                           UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                           UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                           UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
             
             let chartData = PieChartData(dataSet: set)
             set.valueFont = UIFont.boldSystemFont(ofSize: 30)
             pieChartView2.data = chartData
                
         case 2://雑費
            appDelegate.D2a = userDefaults.integer(forKey: "D2a")
            
             appDelegate.B2a = appDelegate.value
             appDelegate.C2a = appDelegate.D2a
             appDelegate.D2a = appDelegate.C2a + appDelegate.B2a
            
            userDefaults.set(appDelegate.D2a, forKey: "D2a")
            
             let Int1 = userDefaults.integer(forKey: "D1a")
             let double1 = Double(Int1)
             let Int2 = userDefaults.integer(forKey: "D2a")
             let double2 = Double(Int2)
             let Int3 = userDefaults.integer(forKey: "D3a")
             let double3 = Double(Int3)
             let Int4 = userDefaults.integer(forKey: "D4a")
             let double4 = Double(Int4)
             let Int5 = userDefaults.integer(forKey: "D5a")
             let double5 = Double(Int5)
             
            var entries = [
                PieChartDataEntry(value: (double1), label: "食費"),
                PieChartDataEntry(value: (double2), label: "雑費"),
                PieChartDataEntry(value: (double3), label: "交通費"),
                PieChartDataEntry(value: (double4), label: "交遊費"),
                PieChartDataEntry(value: (double5), label: "その他"),
                ]
            
            if userDefaults.integer(forKey: "D1a") == 0 {
                entries[0] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D2a") == 0 {
                entries[1] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D3a") == 0 {
                entries[2] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D4a") == 0 {
                entries[3] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D5a") == 0 {
                entries[4] = PieChartDataEntry(value: 0, label: "")
            }
             
             let set = PieChartDataSet(values: entries, label: "")
             
             set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                           UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                           UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                           UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                           UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
             
             let chartData = PieChartData(dataSet: set)
             set.valueFont = UIFont.boldSystemFont(ofSize: 30)
             pieChartView2.data = chartData
        
         case 3:
            appDelegate.D3a = userDefaults.integer(forKey: "D3a")
            
             appDelegate.B3a = appDelegate.value
             appDelegate.C3a = appDelegate.D3a
             appDelegate.D3a = appDelegate.C3a + appDelegate.B3a
            
            userDefaults.set(appDelegate.D3a, forKey: "D3a")
        
             let Int1 = userDefaults.integer(forKey: "D1a")
             let double1 = Double(Int1)
             let Int2 = userDefaults.integer(forKey: "D2a")
             let double2 = Double(Int2)
             let Int3 = userDefaults.integer(forKey: "D3a")
             let double3 = Double(Int3)
             let Int4 = userDefaults.integer(forKey: "D4a")
             let double4 = Double(Int4)
             let Int5 = userDefaults.integer(forKey: "D5a")
             let double5 = Double(Int5)
        
            var entries = [
                PieChartDataEntry(value: (double1), label: "食費"),
                PieChartDataEntry(value: (double2), label: "雑費"),
                PieChartDataEntry(value: (double3), label: "交通費"),
                PieChartDataEntry(value: (double4), label: "交遊費"),
                PieChartDataEntry(value: (double5), label: "その他"),
                ]
            
            if userDefaults.integer(forKey: "D1a") == 0 {
                entries[0] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D2a") == 0 {
                entries[1] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D3a") == 0 {
                entries[2] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D4a") == 0 {
                entries[3] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D5a") == 0 {
                entries[4] = PieChartDataEntry(value: 0, label: "")
            }
             
             let set = PieChartDataSet(values: entries, label: "")
             
             set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                           UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                           UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                           UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                           UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
             
             let chartData = PieChartData(dataSet: set)
             set.valueFont = UIFont.boldSystemFont(ofSize: 30)
             pieChartView2.data = chartData
    
         case 4:
            appDelegate.D4a = userDefaults.integer(forKey: "D4a")
            
             appDelegate.B4a = appDelegate.value
             appDelegate.C4a = appDelegate.D4a
             appDelegate.D4a = appDelegate.C4a + appDelegate.B4a
            
            userDefaults.set(appDelegate.D4a, forKey: "D4a")
    
             let Int1 = userDefaults.integer(forKey: "D1a")
             let double1 = Double(Int1)
             let Int2 = userDefaults.integer(forKey: "D2a")
             let double2 = Double(Int2)
             let Int3 = userDefaults.integer(forKey: "D3a")
             let double3 = Double(Int3)
             let Int4 = userDefaults.integer(forKey: "D4a")
             let double4 = Double(Int4)
             let Int5 = userDefaults.integer(forKey: "D5a")
             let double5 = Double(Int5)
    
            var entries = [
                PieChartDataEntry(value: (double1), label: "食費"),
                PieChartDataEntry(value: (double2), label: "雑費"),
                PieChartDataEntry(value: (double3), label: "交通費"),
                PieChartDataEntry(value: (double4), label: "交遊費"),
                PieChartDataEntry(value: (double5), label: "その他"),
                ]
            
            if userDefaults.integer(forKey: "D1a") == 0 {
                entries[0] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D2a") == 0 {
                entries[1] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D3a") == 0 {
                entries[2] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D4a") == 0 {
                entries[3] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D5a") == 0 {
                entries[4] = PieChartDataEntry(value: 0, label: "")
            }
             
             let set = PieChartDataSet(values: entries, label: "")
             
             set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                           UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                           UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                           UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                           UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
             
             let chartData = PieChartData(dataSet: set)
             set.valueFont = UIFont.boldSystemFont(ofSize: 30)
             pieChartView2.data = chartData

         case 5:
            appDelegate.D5a = userDefaults.integer(forKey: "D5a")
            
             appDelegate.B5a = appDelegate.value
             appDelegate.C5a = appDelegate.D5a
             appDelegate.D5a = appDelegate.C5a + appDelegate.B5a
            
            userDefaults.set(appDelegate.D5a, forKey: "D5a")

             let Int1 = userDefaults.integer(forKey: "D1a")
             let double1 = Double(Int1)
             let Int2 = userDefaults.integer(forKey: "D2a")
             let double2 = Double(Int2)
             let Int3 = userDefaults.integer(forKey: "D3a")
             let double3 = Double(Int3)
             let Int4 = userDefaults.integer(forKey: "D4a")
             let double4 = Double(Int4)
             let Int5 = userDefaults.integer(forKey: "D5a")
             let double5 = Double(Int5)
             
            var entries = [
                PieChartDataEntry(value: (double1), label: "食費"),
                PieChartDataEntry(value: (double2), label: "雑費"),
                PieChartDataEntry(value: (double3), label: "交通費"),
                PieChartDataEntry(value: (double4), label: "交遊費"),
                PieChartDataEntry(value: (double5), label: "その他"),
                ]
            
            if userDefaults.integer(forKey: "D1a") == 0 {
                entries[0] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D2a") == 0 {
                entries[1] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D3a") == 0 {
                entries[2] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D4a") == 0 {
                entries[3] = PieChartDataEntry(value: 0, label: "")
            }
            
            if userDefaults.integer(forKey: "D5a") == 0 {
                entries[4] = PieChartDataEntry(value: 0, label: "")
            }
             
             let set = PieChartDataSet(values: entries, label: "")
             
             set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                           UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                           UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                           UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                           UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
             
             let chartData = PieChartData(dataSet: set)
             set.valueFont = UIFont.boldSystemFont(ofSize: 30)
             pieChartView2.data = chartData
                
            default:
                break
            }
            
            
            
            
        case 2: //火曜日
            switch appDelegate.A {
            case 1:
                appDelegate.D1b = userDefaults.integer(forKey: "D1b")
                
                appDelegate.B1b = appDelegate.value
                appDelegate.C1b = appDelegate.D1b
                appDelegate.D1b = appDelegate.C1b + appDelegate.B1b
                
                userDefaults.set(appDelegate.D1b, forKey: "D1b")
                
                let Int1 = userDefaults.integer(forKey: "D1b")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2b")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3b")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4b")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5b")
                let double5 = Double(Int5)
                
                var entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                if userDefaults.integer(forKey: "D1b") == 0 {
                    entries[0] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D2b") == 0 {
                    entries[1] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D3b") == 0 {
                    entries[2] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D4b") == 0 {
                    entries[3] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D5b") == 0 {
                    entries[4] = PieChartDataEntry(value: 0, label: "")
                }
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
                
            case 2:
                appDelegate.D2b = userDefaults.integer(forKey: "D2b")
                
                appDelegate.B2b = appDelegate.value
                appDelegate.C2b = appDelegate.D2b
                appDelegate.D2b = appDelegate.C2b + appDelegate.B2b
                
                userDefaults.set(appDelegate.D2b, forKey: "D2b")
                
                let Int1 = userDefaults.integer(forKey: "D1b")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2b")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3b")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4b")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5b")
                let double5 = Double(Int5)
                
                var entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                if userDefaults.integer(forKey: "D1b") == 0 {
                    entries[0] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D2b") == 0 {
                    entries[1] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D3b") == 0 {
                    entries[2] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D4b") == 0 {
                    entries[3] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D5b") == 0 {
                    entries[4] = PieChartDataEntry(value: 0, label: "")
                }
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 3:
                appDelegate.D3b = userDefaults.integer(forKey: "D3b")
                
                appDelegate.B3b = appDelegate.value
                appDelegate.C3b = appDelegate.D3b
                appDelegate.D3b = appDelegate.C3b + appDelegate.B3b
                
                userDefaults.set(appDelegate.D3b, forKey: "D3b")
                
                let Int1 = userDefaults.integer(forKey: "D1b")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2b")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3b")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4b")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5b")
                let double5 = Double(Int5)
                
                var entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                if userDefaults.integer(forKey: "D1b") == 0 {
                    entries[0] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D2b") == 0 {
                    entries[1] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D3b") == 0 {
                    entries[2] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D4b") == 0 {
                    entries[3] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D5b") == 0 {
                    entries[4] = PieChartDataEntry(value: 0, label: "")
                }
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 4:
                appDelegate.D4b = userDefaults.integer(forKey: "D4b")
                
                appDelegate.B4b = appDelegate.value
                appDelegate.C4b = appDelegate.D4b
                appDelegate.D4b = appDelegate.C4b + appDelegate.B4b
                
                userDefaults.set(appDelegate.D4b, forKey: "D4b")
                
                let Int1 = userDefaults.integer(forKey: "D1b")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2b")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3b")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4b")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5b")
                let double5 = Double(Int5)
                
                var entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                if userDefaults.integer(forKey: "D1b") == 0 {
                    entries[0] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D2b") == 0 {
                    entries[1] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D3b") == 0 {
                    entries[2] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D4b") == 0 {
                    entries[3] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D5b") == 0 {
                    entries[4] = PieChartDataEntry(value: 0, label: "")
                }
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 5:
                appDelegate.D5b = userDefaults.integer(forKey: "D5b")
                
                appDelegate.B5b = appDelegate.value
                appDelegate.C5b = appDelegate.D5b
                appDelegate.D5b = appDelegate.C5b + appDelegate.B5b
                
                userDefaults.set(appDelegate.D5b, forKey: "D5b")
                
                let Int1 = userDefaults.integer(forKey: "D1b")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2b")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3b")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4b")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5b")
                let double5 = Double(Int5)
                
                var entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                if userDefaults.integer(forKey: "D1b") == 0 {
                    entries[0] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D2b") == 0 {
                    entries[1] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D3b") == 0 {
                    entries[2] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D4b") == 0 {
                    entries[3] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D5b") == 0 {
                    entries[4] = PieChartDataEntry(value: 0, label: "")
                }
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            default:
                break
            }
            
        case 3: //水曜日
            switch appDelegate.A {
            case 1:
                appDelegate.D1c = userDefaults.integer(forKey: "D1c")
                
                appDelegate.B1c = appDelegate.value
                appDelegate.C1c = appDelegate.D1c
                appDelegate.D1c = appDelegate.C1c + appDelegate.B1c
                
                userDefaults.set(appDelegate.D1c, forKey: "D1c")
                
                let Int1 = userDefaults.integer(forKey: "D1c")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2c")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3c")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4c")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5c")
                let double5 = Double(Int5)
                
                var entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                if userDefaults.integer(forKey: "D1c") == 0 {
                    entries[0] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D2c") == 0 {
                    entries[1] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D3c") == 0 {
                    entries[2] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D4c") == 0 {
                    entries[3] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D5c") == 0 {
                    entries[4] = PieChartDataEntry(value: 0, label: "")
                }
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData

            
            case 2:
                appDelegate.D2c = userDefaults.integer(forKey: "D2c")
                
                appDelegate.B2c = appDelegate.value
                appDelegate.C2c = appDelegate.D2c
                appDelegate.D2c = appDelegate.C2c + appDelegate.B2c
                
                userDefaults.set(appDelegate.D2c, forKey: "D2c")
                
                let Int1 = userDefaults.integer(forKey: "D1c")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2c")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3c")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4c")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5c")
                let double5 = Double(Int5)
                
                var entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                if userDefaults.integer(forKey: "D1c") == 0 {
                    entries[0] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D2c") == 0 {
                    entries[1] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D3c") == 0 {
                    entries[2] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D4c") == 0 {
                    entries[3] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D5c") == 0 {
                    entries[4] = PieChartDataEntry(value: 0, label: "")
                }
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
        
        
            case 3:
                appDelegate.D3c = userDefaults.integer(forKey: "D3c")
                
                appDelegate.B3c = appDelegate.value
                appDelegate.C3c = appDelegate.D3c
                appDelegate.D3c = appDelegate.C3c + appDelegate.B3c
                
                userDefaults.set(appDelegate.D3c, forKey: "D3c")
                
                let Int1 = userDefaults.integer(forKey: "D1c")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2c")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3c")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4c")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5c")
                let double5 = Double(Int5)
                
                var entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                if userDefaults.integer(forKey: "D1c") == 0 {
                    entries[0] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D2c") == 0 {
                    entries[1] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D3c") == 0 {
                    entries[2] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D4c") == 0 {
                    entries[3] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D5c") == 0 {
                    entries[4] = PieChartDataEntry(value: 0, label: "")
                }
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 4:
                appDelegate.D4c = userDefaults.integer(forKey: "D4c")
                
                appDelegate.B4c = appDelegate.value
                appDelegate.C4c = appDelegate.D4c
                appDelegate.D4c = appDelegate.C4c + appDelegate.B4c
                
                userDefaults.set(appDelegate.D4c, forKey: "D4c")
                
                let Int1 = userDefaults.integer(forKey: "D1c")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2c")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3c")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4c")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5c")
                let double5 = Double(Int5)
                
                var entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                if userDefaults.integer(forKey: "D1c") == 0 {
                    entries[0] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D2c") == 0 {
                    entries[1] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D3c") == 0 {
                    entries[2] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D4c") == 0 {
                    entries[3] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D5c") == 0 {
                    entries[4] = PieChartDataEntry(value: 0, label: "")
                }
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 5:
                appDelegate.D5c = userDefaults.integer(forKey: "D5c")
                
                appDelegate.B5c = appDelegate.value
                appDelegate.C5c = appDelegate.D5c
                appDelegate.D5c = appDelegate.C5c + appDelegate.B5c
                
                userDefaults.set(appDelegate.D5c, forKey: "D5c")
                
                let Int1 = userDefaults.integer(forKey: "D1c")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2c")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3c")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4c")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5c")
                let double5 = Double(Int5)
                
                var entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                if userDefaults.integer(forKey: "D1c") == 0 {
                    entries[0] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D2c") == 0 {
                    entries[1] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D3c") == 0 {
                    entries[2] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D4c") == 0 {
                    entries[3] = PieChartDataEntry(value: 0, label: "")
                }
                
                if userDefaults.integer(forKey: "D5c") == 0 {
                    entries[4] = PieChartDataEntry(value: 0, label: "")
                }
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            
        default:
            break
            }
        case 4: //木曜日
            switch appDelegate.A {
            case 1:
                appDelegate.D1d = userDefaults.integer(forKey: "D1d")
                
                appDelegate.B1d = appDelegate.value
                appDelegate.C1d = appDelegate.D1d
                appDelegate.D1d = appDelegate.C1d + appDelegate.B1d
                
                userDefaults.set(appDelegate.D1d, forKey: "D1d")
                
                let Int1 = userDefaults.integer(forKey: "D1d")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2d")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3d")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4d")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5d")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 2:
                appDelegate.D2d = userDefaults.integer(forKey: "D2d")
                
                appDelegate.B2d = appDelegate.value
                appDelegate.C2d = appDelegate.D2d
                appDelegate.D2d = appDelegate.C2d + appDelegate.B2d
                
                userDefaults.set(appDelegate.D2d, forKey: "D2d")
                
                let Int1 = userDefaults.integer(forKey: "D1d")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2d")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3d")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4d")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5d")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 3:
                appDelegate.D3d = userDefaults.integer(forKey: "D3d")
                
                appDelegate.B3d = appDelegate.value
                appDelegate.C3d = appDelegate.D3d
                appDelegate.D3d = appDelegate.C3d + appDelegate.B3d
                
                userDefaults.set(appDelegate.D3d, forKey: "D3d")
                
                let Int1 = userDefaults.integer(forKey: "D1d")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2d")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3d")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4d")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5d")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 4:
                appDelegate.D4d = userDefaults.integer(forKey: "D4d")
                
                appDelegate.B4d = appDelegate.value
                appDelegate.C4d = appDelegate.D4d
                appDelegate.D4d = appDelegate.C4d + appDelegate.B4d
                
                userDefaults.set(appDelegate.D4d, forKey: "D4d")
                
                let Int1 = userDefaults.integer(forKey: "D1d")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2d")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3d")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4d")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5d")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 5:
                appDelegate.D5d = userDefaults.integer(forKey: "D5d")
                
                appDelegate.B5d = appDelegate.value
                appDelegate.C5d = appDelegate.D5d
                appDelegate.D5d = appDelegate.C5d + appDelegate.B5d
                
                userDefaults.set(appDelegate.D5d, forKey: "D5d")
                
                let Int1 = userDefaults.integer(forKey: "D1d")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2d")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3d")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4d")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5d")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            default:
                appDelegate.value = 0
            }
        case 5: //金曜日
            switch appDelegate.A {
            case 1:
                appDelegate.D1e = userDefaults.integer(forKey: "D1e")
                
                appDelegate.B1e = appDelegate.value
                appDelegate.C1e = appDelegate.D1e
                appDelegate.D1e = appDelegate.C1e + appDelegate.B1e
                
                userDefaults.set(appDelegate.D1e, forKey: "D1e")
                
                let Int1 = userDefaults.integer(forKey: "D1e")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2e")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3e")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4e")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5e")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 2:
                appDelegate.D2e = userDefaults.integer(forKey: "D2e")
                
                appDelegate.B2e = appDelegate.value
                appDelegate.C2e = appDelegate.D2e
                appDelegate.D2e = appDelegate.C2e + appDelegate.B2e
                
                userDefaults.set(appDelegate.D2e, forKey: "D2e")
                
                let Int1 = userDefaults.integer(forKey: "D1e")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2e")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3e")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4e")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5e")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 3:
                appDelegate.D3d = userDefaults.integer(forKey: "D3e")
                
                appDelegate.B3e = appDelegate.value
                appDelegate.C3e = appDelegate.D3e
                appDelegate.D3e = appDelegate.C3e + appDelegate.B3e
                
                userDefaults.set(appDelegate.D3e, forKey: "D3e")
                
                let Int1 = userDefaults.integer(forKey: "D1e")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2e")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3e")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4e")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5e")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 4:
                appDelegate.D4e = userDefaults.integer(forKey: "D4e")
                
                appDelegate.B4e = appDelegate.value
                appDelegate.C4e = appDelegate.D4e
                appDelegate.D4e = appDelegate.C4e + appDelegate.B4e
                
                userDefaults.set(appDelegate.D4e, forKey: "D4e")
                
                let Int1 = userDefaults.integer(forKey: "D1e")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2e")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3e")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4e")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5e")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 5:
                appDelegate.D5e = userDefaults.integer(forKey: "D5e")
                
                appDelegate.B5e = appDelegate.value
                appDelegate.C5e = appDelegate.D5e
                appDelegate.D5e = appDelegate.C5e + appDelegate.B5e
                
                userDefaults.set(appDelegate, forKey: "D5e")
            
                let Int1 = userDefaults.integer(forKey: "D1e")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2e")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3e")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4e")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5e")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            default:
                break
            }
        case 6: //土曜日
            switch appDelegate.A {
            case 1:
                appDelegate.D1f = userDefaults.integer(forKey: "D1f")
                
                appDelegate.B1f = appDelegate.value
                appDelegate.C1f = appDelegate.D1f
                appDelegate.D1f = appDelegate.C1f + appDelegate.B1f
                
                userDefaults.set(appDelegate.D1f, forKey: "D1f")
                
                let Int1 = userDefaults.integer(forKey: "D1f")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2f")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3f")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4f")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5f")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 2:
                appDelegate.D2f = userDefaults.integer(forKey: "D2f")
                
                appDelegate.B2f = appDelegate.value
                appDelegate.C2f = appDelegate.D2f
                appDelegate.D2f = appDelegate.C2f + appDelegate.B2f
                
                userDefaults.integer(forKey: "D2f")
                
                let Int1 = userDefaults.integer(forKey: "D1f")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2f")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3f")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4f")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5f")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 3:
                appDelegate.D3f = userDefaults.integer(forKey: "D4f")
                
                appDelegate.B3f = appDelegate.value
                appDelegate.C3f = appDelegate.D3f
                appDelegate.D3f = appDelegate.C3f + appDelegate.B3f
                
                userDefaults.set(appDelegate.D3f, forKey: "D3f")
                
                let Int1 = userDefaults.integer(forKey: "D1f")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2f")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3f")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4f")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5f")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 4:
                appDelegate.D4f = userDefaults.integer(forKey: "D4f")
                
                appDelegate.B4f = appDelegate.value
                appDelegate.C4f = appDelegate.D4f
                appDelegate.D4f = appDelegate.C4f + appDelegate.B4f
                
                userDefaults.set(appDelegate.D4f, forKey: "D4f")
                
                let Int1 = userDefaults.integer(forKey: "D1f")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2f")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3f")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4f")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5f")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                
                pieChartView2.data = chartData
            case 5:
                appDelegate.D5f = userDefaults.integer(forKey: "D5f")
                
                appDelegate.B5f = appDelegate.value
                appDelegate.C5f = appDelegate.D5f
                appDelegate.D5f = appDelegate.C5f + appDelegate.B5f
                
                userDefaults.set(appDelegate.D5f, forKey: "D5f")
                
                let Int1 = userDefaults.integer(forKey: "D1f")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2f")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3f")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4f")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5f")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            default:
                break
            }
        case 7: //日曜日
            switch appDelegate.A {
            case 1:
                appDelegate.D1g = userDefaults.integer(forKey: "D1g")
                
                appDelegate.B1g = appDelegate.value
                appDelegate.C1g = appDelegate.D1g
                appDelegate.D1g = appDelegate.C1g + appDelegate.B1g
                
                userDefaults.set(appDelegate.D2g, forKey: "D1g")
                
                let Int1 = userDefaults.integer(forKey: "D1g")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2g")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3g")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4g")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5g")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 2:
                appDelegate.D2g = userDefaults.integer(forKey: "D2g")
                
                appDelegate.B2g = appDelegate.value
                appDelegate.C2g = appDelegate.D2g
                appDelegate.D2g = appDelegate.C2g + appDelegate.B2g
                
                userDefaults.set(appDelegate.D2g, forKey: "D2g")
                
                let Int1 = userDefaults.integer(forKey: "D1g")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2g")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3g")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4g")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5g")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 3:
                appDelegate.D3g = userDefaults.integer(forKey: "D3g")
                
                appDelegate.B3g = appDelegate.value
                appDelegate.C3g = appDelegate.D3g
                appDelegate.D3g = appDelegate.C3g + appDelegate.B3g
                
                userDefaults.set(appDelegate.D3g, forKey: "D3g")
                
                let Int1 = userDefaults.integer(forKey: "D1g")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2g")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3g")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4g")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5g")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 4:
                appDelegate.D4g = userDefaults.integer(forKey: "D4g")
                
                appDelegate.B4g = appDelegate.value
                appDelegate.C4g = appDelegate.D4g
                appDelegate.D4g = appDelegate.C4g + appDelegate.B4g
                
                userDefaults.set(appDelegate.D4g, forKey: "D4g")
                
                let Int1 = userDefaults.integer(forKey: "D1g")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2g")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3g")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4g")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5g")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            case 5:
                appDelegate.D5g = userDefaults.integer(forKey: "D5g")
                
                appDelegate.B5g = appDelegate.value
                appDelegate.C5g = appDelegate.D5g
                appDelegate.D5g = appDelegate.C5g + appDelegate.B5g
                
                userDefaults.set(appDelegate.D5g, forKey: "D5g")
                
                let Int1 = userDefaults.integer(forKey: "D1g")
                let double1 = Double(Int1)
                let Int2 = userDefaults.integer(forKey: "D2g")
                let double2 = Double(Int2)
                let Int3 = userDefaults.integer(forKey: "D3g")
                let double3 = Double(Int3)
                let Int4 = userDefaults.integer(forKey: "D4g")
                let double4 = Double(Int4)
                let Int5 = userDefaults.integer(forKey: "D5g")
                let double5 = Double(Int5)
                
                let entries = [
                    PieChartDataEntry(value: (double1), label: "食費"),
                    PieChartDataEntry(value: (double2), label: "雑費"),
                    PieChartDataEntry(value: (double3), label: "交通費"),
                    PieChartDataEntry(value: (double4), label: "交遊費"),
                    PieChartDataEntry(value: (double5), label: "その他"),
                    ]
                
                let set = PieChartDataSet(values: entries, label: "")
                
                set.setColors(UIColor(red: 255/255, green: 126/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 212/225, blue: 121/255, alpha: 1),
                              UIColor(red: 255/255, green: 252/225, blue: 121/255, alpha: 1),
                              UIColor(red: 212/255, green: 251/225, blue: 121/255, alpha: 1),
                              UIColor(red: 115/255, green: 250/225, blue: 121/255, alpha: 1))
                
                let chartData = PieChartData(dataSet: set)
                set.valueFont = UIFont.boldSystemFont(ofSize: 30)
                pieChartView2.data = chartData
            default:
                break
            }
        default:
            break
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGraph2()
        view.backgroundColor = UIColor(red: 84/255, green: 232/255, blue: 193/255, alpha: 1)
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {

        dentakuLavel2.text = "\(appDelegate.value)円"
        syuppiLavel3.text = appDelegate.syuppi
        youbiLavel4.text = appDelegate.youbi
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
}

