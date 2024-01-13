//
//import Foundation
//import UIKit
//
//enum TypeOfSetting: String {
//    case withDisclosureOption
//    case withSwitchButton
//}
//
//struct Setting: Hashable {
//    var icon = String()
//    var title: String
//    var status = String()
//    var type: TypeOfSetting
//
//}
//
//extension Setting {
//    static var settings: [[Setting]] = [
//        [Setting(icon: "airplane", title: "Airplane Mode", type: .withSwitchButton),
//        Setting(icon: "wifi", title: "Wi-Fi", status: "Off", type: .withDisclosureOption),
//        Setting(icon: "bluetooth", title: "Bluetooth", status: "Not connected", type: .withDisclosureOption),
//        Setting(icon: "antenna.radiowaves.left.and.right", title: "Mobile Data", type: .withDisclosureOption)],
//    
//       [Setting(icon: "bell.badge.fill", title: "Notifications", type: .withDisclosureOption),
//        Setting(icon: "speaker.wave.3.fill", title: "Sounds & Haptics", type: .withDisclosureOption),
//        Setting(icon: "moon.fill", title: "Focus", type: .withDisclosureOption),
//        Setting(icon: "hourglass", title: "Screen Time", type: .withDisclosureOption)],
//    
//        [Setting(icon: "gear", title: "General", type: .withDisclosureOption),
//        Setting(icon: "switch.2", title: "Control Centre", type: .withDisclosureOption),
//        Setting(icon: "textformat.size", title: "Display & Brightness", type: .withDisclosureOption),
//        Setting(icon: "siri", title: "Siri & Search", type: .withDisclosureOption),
//        Setting(icon: "accessibility", title: "Accessibility", type: .withDisclosureOption),
//        Setting(icon: "sos", title: "Emergency SOS", type: .withDisclosureOption),
//        Setting(icon: "microbe.fill", title: "Exposure Notifications", type: .withDisclosureOption),
//        Setting(icon: "battery.100percent", title: "Battery", type: .withDisclosureOption),
//        Setting(icon: "hand.raised.fill", title: "Privacy & Security", type: .withDisclosureOption)]
//    ]
//}

//
//    func selectedCell(model: SettingsModel) {
//        let detailViewController = DetailController()
//        detailViewController.model = model
//        navigationController?.pushViewController(detailViewController, animated: true)
//    }

