//
//  Model.swift
//  bmi2.0
//
//  Created by Артем on 1/11/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import Foundation

struct BmiCalc {
    var height: Double = 0.0
    var weight: Double = 0.0
    var sex = ""
    
    init(sex: String, weight: Int, height: Int) {
        self.height = Double(height)
        self.weight = Double(weight)
        self.sex = sex
    }
    
    func bmiCalculation () -> String {
        let bmi = Double(weight/((height/100)*(height/100)))
        print(weight)
        print(height)
        print("результат \(bmi)")
        
        if sex == "Woman" {
            switch bmi {
            case 0..<19: return "Недовес"
            case 19...24: return "Нормальный вес"
            case 25...30: return "Избыточный вес"
            case 31...40: return "Ожирение"
            case 40...: return "Очень резкое ожирение"
            default: return "п"
            }
        } else {
            switch bmi {
            case 0..<20: return "Недовес"
            case 20...25: return "Нормальный вес"
            case 26...30: return "Избыточный вес"
            case 31...40: return "Ожирение"
            case 40...: return "Очень резкое ожирение"
            default: return "х"
            }
        }
    }
}

