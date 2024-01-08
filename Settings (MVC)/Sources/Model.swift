
import UIKit

enum TypeOfSetting: String {
    case withDisclosureOption
    case withSwitchButton
}

struct Setting: Hashable {
    var icon: UIImage?
    var name: String
    var status: String = ""
    var type: TypeOfSetting
}

extension Setting {
    static var settings: [[Setting]] = [
       [Setting(icon: UIImage(named: "airplane")!, name: "Авиарежим", type: .withSwitchButton),
        Setting(icon: UIImage(named: "wifi")!, name: "Wi-Fi", status: "Не подключено", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "bluetooth")!, name: "Bluetooth", status: "Вкл.", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "antenna.radiowaves.left.and.right")!, name: "Сотовая связь", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "personalhotspot")!, name: "Режим модема", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "vpn")!, name: "VPN", type: .withSwitchButton)],
    
       [Setting(icon: UIImage(named: "bell.badge")!, name: "Уведомления", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "speaker.wave.3.fill")!, name: "Звуки, тактильные сигналы", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "moon.fill")!, name: "Не беспокоить", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "hourglass")!, name: "Экранное время", type: .withDisclosureOption)],
    
       [Setting(icon: UIImage(named: "gear")!, name: "Основные", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "switch.2")!, name: "Пункт управления", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "textformat.size")!, name: "Экран и яркость", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "home")!, name: "Экран \"Домой\"", type: .withDisclosureOption),
        Setting(icon: UIImage(named: "accessibility")!, name: "Универсальный доступ", type: .withDisclosureOption)]
    ]
}
