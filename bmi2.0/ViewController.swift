//
//  ViewController.swift
//  bmi2.0
//
//  Created by Артем on 1/10/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bmi = BmiCalc(sex: "Man", weight: 10, height: 101)
    var resultVC2 = CalcBmiViewController()
    var result = ""
    

    let sex = ["Man", "Woman"]
    let height = Array(101...300)
    let weight = Array(10...250)
    
    
    @IBOutlet weak var pickerSex: UIPickerView!
    @IBOutlet weak var labelTextTest: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTextTest.adjustsFontSizeToFitWidth = true
        self.pickerSex.delegate = self
        self.pickerSex.dataSource = self
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
        print ("Tup button = \(bmi.sex, bmi.height, bmi.weight)")
        self.labelTextTest.text = bmi.bmiCalculation()
        //self.result = bmi.bmiCalculation()
        resultVC2.labelResult.text = bmi.bmiCalculation()
        print(resultVC2.labelResult.text!)
        //print(result)
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

