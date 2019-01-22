import Foundation
import UIKit


protocol Bmi {
    var img: Images {get set}
    var height: Double {get set}
    var weight: Double {get set}
    var sex: String {get set}
    var result: (String, UIImage) {get set}
    func bmiCalc() -> (String, UIImage)
    
}

struct BmiCalc: Bmi {
    var img = Images()
    var height: Double = 101.0
    var weight: Double = 10.0
    var sex = "man"
    var result = ("error", UIImage())
    
    func bmiCalc() -> (String, UIImage) {
        let bmi = Double(weight/((height/100)*(height/100)))
        print(bmi)
        if sex == "Woman" {
            switch bmi {
            case 0..<19: return ("Недовес", img.resultImagesFun["thin_woman"]!)
            case 19..<25: return ("Нормальный вес", img.resultImagesFun["normal_woman"]!)
            case 25..<30: return ("Избыточный вес", img.resultImagesFun["excess_woman"]!)
            case 30..<40: return ("Ожирение", img.resultImagesFun["fat_woman1"]!)
            case 40...: return ("Очень резкое ожирение", img.resultImagesFun["fat_woman"]!)
            default: return ("сломалось", img.resultImagesFun["alarm"]!)
            }
        } else {
            switch bmi {
            case 0..<20: return ("Недовес", img.resultImagesFun["thin_man"]!)
            case 20..<25: return ("Нормальный вес", img.resultImagesFun["normal_man"]!)
            case 25..<30: return ("Избыточный вес", img.resultImagesFun["excess_man"]!)
            case 30..<40: return ("Ожирение", img.resultImagesFun["fat_man"]!)
            case 40...: return ("Очень резкое ожирение", img.resultImagesFun["very_fat_man"]!)
            default: return ("сломалось", img.resultImagesFun["alarm"]!)
            }
        }
    }
}




