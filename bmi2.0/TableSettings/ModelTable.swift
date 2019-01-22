
import Foundation

protocol SettingsValues {
    var names: [String] {get set}
    var identNames: [String] {get set}
}

struct Values: SettingsValues {
    var names = ["Dark theme"]
    var identNames = ["settingsTheme"]
}

