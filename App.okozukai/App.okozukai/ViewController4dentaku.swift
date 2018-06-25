import UIKit
enum Operator {
    case undefind  //未
    case addition  //加法
    case subtraction  //減法
    case multiplication  //乗法
    case division  //除法
}


class ViewController4dentaku: UIViewController {
    
    
    
    var firstValue = 0
    var secondValue = 0
    var currentOperator = Operator.undefind
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var youbiLavel7: UILabel!
    
    @IBOutlet weak var syuppiLavel7: UILabel!
    
    @IBOutlet weak var dentakuLavel: UILabel!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 84/255, green: 232/255, blue: 193/255, alpha: 1)
        
        switch appDelegate.A {
        case 1:
            syuppiLavel7.text = "食費"
        case 2:
            syuppiLavel7.text = "雑費"
        case 3:
            syuppiLavel7.text = "交通費"
        case 4:
            syuppiLavel7.text = "交遊費"
        case 5:
            syuppiLavel7.text = "その他"
        default:
            syuppiLavel7.text = ""
        }
        
        switch appDelegate.B {
        case 1:
            youbiLavel7.text = "月曜日"
        case 2:
            youbiLavel7.text = "火曜日"
        case 3:
            youbiLavel7.text = "水曜日"
        case 4:
            youbiLavel7.text = "木曜日"
        case 5:
            youbiLavel7.text = "金曜日"
        case 6:
            youbiLavel7.text = "土曜日"
        case 7:
            youbiLavel7.text = "日曜日"
        default:
            youbiLavel7.text = ""
        }
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        var value = 0
        switch sender.currentTitle! {
        case "0":
            value = 0
        case "1":
            value = 1
        case "2":
            value = 2
        case "3":
            value = 3
        case "4":
            value = 4
        case "5":
            value = 5
        case "6":
            value = 6
        case "7":
            value = 7
        case "8":
            value = 8
        case "9":
            value = 9
        default:
            value = 0
        }
        if currentOperator == .undefind {
            firstValue = firstValue * 10 + value
            dentakuLavel.text = "\(firstValue)"
        } else {
            secondValue = secondValue * 10 + value
            dentakuLavel.text = "\(secondValue)"
        }
    }
    
    @IBAction func operatorButtonTapped(_ sender: UIButton) {
        switch sender.currentTitle! {
        case "+":
            currentOperator = .addition
        case "-":
            currentOperator = .subtraction
        case "×":
            currentOperator = .multiplication
        case "÷":
            currentOperator = .division
        default:
            currentOperator = .undefind
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewDidLoad()
    }
    
    @IBAction func equalButtonTapped(_ sender: UIButton) {
      //  var value = 0
        switch currentOperator {
        case .addition:
            appDelegate.value = firstValue + secondValue
        case .subtraction:
            appDelegate.value = firstValue - secondValue
        case .multiplication:
            appDelegate.value = firstValue * secondValue
        case .division:
            appDelegate.value = firstValue / secondValue
        case .undefind:
            appDelegate.value = firstValue
            
        }
        dentakuLavel.text = "\(appDelegate.value)円"
        firstValue = 0
        secondValue = 0
        currentOperator = . undefind
    }
    
    
    @IBAction func allClearButtonTapped(_ sender: UIButton) {
        firstValue = 0
        secondValue = 0
        currentOperator = .undefind
        dentakuLavel.text = "0"
    }
    
    func kakikomu() -> String {
        return "\(appDelegate.youbi)に\(appDelegate.syuppi)で\(appDelegate.value)円\n"
    }
    
    @IBAction func kakikomuButton(_ sender: UIButton) {
        let userDefaults: UserDefaults = UserDefaults.standard
        
        appDelegate.C = userDefaults.integer(forKey: "KEY_C")
        
        if dentakuLavel.text! == "\(firstValue)" {
            appDelegate.value = firstValue
        }
        
        if appDelegate.value > 0 {
            appDelegate.C = 1
            userDefaults.set(appDelegate.C, forKey: "KEY_C")
        }
               
        appDelegate.D = kakikomu()
        appDelegate.E = appDelegate.E + appDelegate.D
        
        
}
    
}
