
import Foundation

enum Accessory: String {
    case withDisclosure
    case withSwitch
}

struct Setting {
    var icon = String()
    var backgroundColor: String
    var title: String
    var status = String()
    var accessoryType: Accessory
}

final class SettingsModel {
    func createModels() -> [[Setting]] {
        return [
            [Setting(icon: "airplane", backgroundColor: BackgroundColor.orange.rawValue, title: "Airplane Mode", accessoryType: .withSwitch),
             Setting(icon: "wifi",  backgroundColor: BackgroundColor.blue.rawValue, title: "Wi-Fi", status: "Off", accessoryType: .withDisclosure),
             Setting(icon: "bluetooth",  backgroundColor: BackgroundColor.blue.rawValue, title: "Bluetooth", status: "Not connected", accessoryType: .withDisclosure),
             Setting(icon: "antenna.radiowaves.left.and.right",  backgroundColor: BackgroundColor.green.rawValue, title: "Mobile Data", accessoryType: .withDisclosure)],
            
            [Setting(icon: "bell.badge.fill",  backgroundColor: BackgroundColor.red.rawValue, title: "Notifications", accessoryType: .withDisclosure),
             Setting(icon: "speaker.wave.3.fill",  backgroundColor: BackgroundColor.pink.rawValue, title: "Sounds & Haptics", accessoryType: .withDisclosure),
             Setting(icon: "moon.fill",  backgroundColor: BackgroundColor.indigo.rawValue, title: "Focus", accessoryType: .withDisclosure),
             Setting(icon: "hourglass",  backgroundColor: BackgroundColor.indigo.rawValue, title: "Screen Time", accessoryType: .withDisclosure)],
            
            [Setting(icon: "gear",  backgroundColor: BackgroundColor.gray.rawValue, title: "General", accessoryType: .withDisclosure),
             Setting(icon: "switch.2",  backgroundColor: BackgroundColor.gray.rawValue, title: "Control Centre", accessoryType: .withDisclosure),
             Setting(icon: "siri",  backgroundColor: BackgroundColor.black.rawValue, title: "Siri & Search", accessoryType: .withDisclosure),
             Setting(icon: "textformat.size",  backgroundColor: BackgroundColor.blue.rawValue, title: "Display & Brightness", accessoryType: .withDisclosure),
             Setting(icon: "accessibility",  backgroundColor: BackgroundColor.blue.rawValue, title: "Accessibility", accessoryType: .withDisclosure),
             Setting(icon: "sos",  backgroundColor: BackgroundColor.red.rawValue, title: "Emergency SOS", accessoryType: .withDisclosure),
             Setting(icon: "microbe.fill",  backgroundColor: BackgroundColor.white.rawValue, title: "Exposure Notifications", accessoryType: .withDisclosure),
             Setting(icon: "battery.100percent",  backgroundColor: BackgroundColor.green.rawValue, title: "Battery", accessoryType: .withDisclosure),
             Setting(icon: "hand.raised.fill",  backgroundColor: BackgroundColor.blue.rawValue, title: "Privacy & Security", accessoryType: .withDisclosure)]
        ]
    }
}
