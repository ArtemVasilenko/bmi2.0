
import Foundation
import UIKit

protocol SettingsValues {
    var names: [String] {get set}
    var identNames: [String] {get set}
    var backgroundColorWhite: UIColor {get set}
    var backgroundColorDarkGray: UIColor {get set}
}

struct Values: SettingsValues {
    var names = ["Dark theme"]
    var identNames = ["settingsTheme"]
    var backgroundColorWhite = UIColor.white
    var backgroundColorDarkGray = UIColor.darkGray
}

