import Foundation
import UIKit

var result = ("", resultImagesFun["alarm"]!)

struct BmiCalc {
    
    var height: Double = 101.0
    var weight: Double = 10.0
    var sex = "man"
    
    
    
    func bmiCalcImage() -> (String, UIImage) {
        let bmi = Double(weight/((height/100)*(height/100)))
        print(bmi)
        if sex == "Woman" {
            switch bmi {
            case 0..<19: return ("Недовес", resultImagesFun["thin_woman"]!)
            case 19..<25: return ("Нормальный вес", resultImagesFun["normal_woman"]!)
            case 25..<30: return ("Избыточный вес", resultImagesFun["excess_woman"]!)
            case 30..<40: return ("Ожирение", resultImagesFun["fat_woman1"]!)
            case 40...: return ("Очень резкое ожирение", resultImagesFun["fat_woman"]!)
            default: return ("сломалось", resultImagesFun["alarm"]!)
            }
        } else {
            switch bmi {
            case 0..<20: return ("Недовес", resultImagesFun["thin_man"]!)
            case 20..<25: return ("Нормальный вес", resultImagesFun["normal_man"]!)
            case 25..<30: return ("Избыточный вес", resultImagesFun["excess_man"]!)
            case 30..<40: return ("Ожирение", resultImagesFun["fat_man"]!)
            case 40...: return ("Очень резкое ожирение", resultImagesFun["very_fat_man"]!)
            default: return ("сломалось", resultImagesFun["alarm"]!)
            }
        }
        
        
    }
}




