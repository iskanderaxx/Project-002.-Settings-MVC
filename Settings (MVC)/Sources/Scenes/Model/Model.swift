
import Foundation

enum Accessory: String {
    case withDisclosure
    case withSwitch
}

struct Setting {
    var icon = String()
    var title: String
    var status = String()
    var accessoryType: Accessory
}

final class SettingsModel {
    func createModels() -> [[Setting]] {
        return [
            [Setting(icon: "airplane", title: "Airplane Mode", accessoryType: .withSwitch),
             Setting(icon: "wifi", title: "Wi-Fi", status: "Off", accessoryType: .withDisclosure),
             Setting(icon: "bluetooth", title: "Bluetooth", status: "Not connected", accessoryType: .withDisclosure),
             Setting(icon: "antenna.radiowaves.left.and.right", title: "Mobile Data", accessoryType: .withDisclosure)],
            
            [Setting(icon: "bell.badge.fill", title: "Notifications", accessoryType: .withDisclosure),
             Setting(icon: "speaker.wave.3.fill", title: "Sounds & Haptics", accessoryType: .withDisclosure),
             Setting(icon: "moon.fill", title: "Focus", accessoryType: .withDisclosure),
             Setting(icon: "hourglass", title: "Screen Time", accessoryType: .withDisclosure)],
            
            [Setting(icon: "gear", title: "General", accessoryType: .withDisclosure),
             Setting(icon: "switch.2", title: "Control Centre", accessoryType: .withDisclosure),
             Setting(icon: "textformat.size", title: "Display & Brightness", accessoryType: .withDisclosure),
             Setting(icon: "siri", title: "Siri & Search", accessoryType: .withDisclosure),
             Setting(icon: "accessibility", title: "Accessibility", accessoryType: .withDisclosure),
             Setting(icon: "sos", title: "Emergency SOS", accessoryType: .withDisclosure),
             Setting(icon: "microbe.fill", title: "Exposure Notifications", accessoryType: .withDisclosure),
             Setting(icon: "battery.100percent", title: "Battery", accessoryType: .withDisclosure),
             Setting(icon: "hand.raised.fill", title: "Privacy & Security", accessoryType: .withDisclosure)]
        ]
    }
}
