import UIKit

class ViewController: UIViewController {
    var bmi: Bmi = BmiCalc()
    var picker = ValuesPicker()
    
    @IBOutlet weak var pickerSex: UIPickerView!
    @IBOutlet weak var helloImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerSex.delegate = self
        self.pickerSex.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        bmi.result = bmi.bmiCalc()
        let cbmvc = segue.destination as! CalcBmiViewController
        cbmvc.bmi.result = bmi.result
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
        print(bmi.result)
    }
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return picker.sex.count
        }
        if component == 1 {
            return picker.weight.count
        }
        return picker.height.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return self.picker.sex[row]
        }
        if component == 1 {
            return String(picker.weight[row])
        }
        return String(picker.height[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        bmi.sex = picker.sex[pickerView.selectedRow(inComponent: 0)]
        bmi.weight = Double(picker.weight[pickerView.selectedRow(inComponent: 1)])
        bmi.height = Double(picker.height[pickerView.selectedRow(inComponent: 2)])
        
        print(bmi.sex, bmi.weight, bmi.height)
    }
    
}

