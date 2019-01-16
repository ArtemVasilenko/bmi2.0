import UIKit

class ViewController: UIViewController {
    var bmi = BmiCalc(sex: "Man", weight: 10, height: 101)
    let sex = ["Man", "Woman"]
    let height = Array(101...300)
    let weight = Array(10...250)
    
    
    @IBOutlet weak var pickerSex: UIPickerView!
    @IBOutlet weak var helloImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerSex.delegate = self
        self.pickerSex.dataSource = self
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
       result = bmi.bmiCalcImage()
    }
}



extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return sex.count
        }
        if component == 1 {
            return weight.count
        }
        return height.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return self.sex[row]
        }
        if component == 1 {
            return String(weight[row])
        }
        return String(height[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        bmi.sex = sex[pickerView.selectedRow(inComponent: 0)]
        bmi.weight = Double(weight[pickerView.selectedRow(inComponent: 1)])
        bmi.height = Double(height[pickerView.selectedRow(inComponent: 2)])
        
        print(bmi.sex, bmi.weight, bmi.height)
    }
    
}

