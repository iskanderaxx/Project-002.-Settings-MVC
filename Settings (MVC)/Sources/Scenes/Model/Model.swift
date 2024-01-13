
import UIKit

enum Accessory: String {
    case withDisclosure
    case withSwitch
}

struct Setting {
    var icon = String()
    var backgroundColor: UIColor
    var title: String
    var status = String()
    var accessoryType: Accessory
}

final class SettingsModel {
    func createModels() -> [[Setting]] {
        return [
            [Setting(icon: "airplane", backgroundColor: .systemOrange, title: "Airplane Mode", accessoryType: .withSwitch),
             Setting(icon: "wifi",  backgroundColor: .systemBlue, title: "Wi-Fi", status: "Off", accessoryType: .withDisclosure),
             Setting(icon: "bluetooth",  backgroundColor: .systemBlue, title: "Bluetooth", status: "Not connected", accessoryType: .withDisclosure),
             Setting(icon: "antenna.radiowaves.left.and.right",  backgroundColor: .systemGreen, title: "Mobile Data", accessoryType: .withDisclosure)],
            
            [Setting(icon: "bell.badge.fill",  backgroundColor: .systemRed, title: "Notifications", accessoryType: .withDisclosure),
             Setting(icon: "speaker.wave.3.fill",  backgroundColor: .systemPink, title: "Sounds & Haptics", accessoryType: .withDisclosure),
             Setting(icon: "moon.fill",  backgroundColor: .systemIndigo, title: "Focus", accessoryType: .withDisclosure),
             Setting(icon: "hourglass",  backgroundColor: .systemIndigo, title: "Screen Time", accessoryType: .withDisclosure)],
            
            [Setting(icon: "gear",  backgroundColor: .systemGray, title: "General", accessoryType: .withDisclosure),
             Setting(icon: "switch.2",  backgroundColor: .systemGray, title: "Control Centre", accessoryType: .withDisclosure),
             Setting(icon: "siri",  backgroundColor: .black, title: "Siri & Search", accessoryType: .withDisclosure),
             Setting(icon: "textformat.size",  backgroundColor: .systemBlue, title: "Display & Brightness", accessoryType: .withDisclosure),
             Setting(icon: "accessibility",  backgroundColor: .systemBlue, title: "Accessibility", accessoryType: .withDisclosure),
             Setting(icon: "sos",  backgroundColor: .systemRed, title: "Emergency SOS", accessoryType: .withDisclosure),
             Setting(icon: "microbe.fill",  backgroundColor: .white, title: "Exposure Notifications", accessoryType: .withDisclosure),
             Setting(icon: "battery.100percent",  backgroundColor: .systemGreen, title: "Battery", accessoryType: .withDisclosure),
             Setting(icon: "hand.raised.fill",  backgroundColor: .systemBlue, title: "Privacy & Security", accessoryType: .withDisclosure)]
        ]
    }
}
