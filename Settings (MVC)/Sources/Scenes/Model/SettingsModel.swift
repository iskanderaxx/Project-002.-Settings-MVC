//
//import Foundation
//import UIKit
//
//enum TypeOfSetting: String {
//    case withDisclosureOption
//    case withSwitchButton
//}
//
//// 4. В структуре модели нам нужно 4 поля: тайтл настройки, иконка, ее статус и наличие/отсутствие дискложера.
//struct Setting: Hashable {
//    var icon: UIImage?
//    var title: String
//    var status = String()
//    var type: TypeOfSetting
//}
//
//final class SettingsModel {
//    //extension SettingsModel {
//    func createModels() -> [Setting] {
//        //    static var settings: [[SettingsModel]] = [
//        return [
//            Setting(icon: UIImage(systemName: "airplane"), title: "Авиарежим", type: .withSwitchButton),
//            Setting(icon: UIImage(systemName: "wifi"), title: "Wi-Fi", status: "Не подключено", type: .withDisclosureOption),
//            Setting(icon: UIImage(named: "bluetooth"), title: "Bluetooth", status: "Вкл.", type: .withDisclosureOption),
//            Setting(icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), title: "Сотовая связь", type: .withDisclosureOption),
//            
////            Setting(icon: UIImage(named: "bell.badge"), title: "Уведомления", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "speaker.wave.3.fill"), title: "Звуки, тактильные сигналы", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "moon.fill"), title: "Не беспокоить", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "hourglass"), title: "Экранное время", type: .withDisclosureOption),
////            
////            Setting(icon: UIImage(named: "gear"), title: "Основные", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "switch.2"), title: "Пункт управления", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "textformat.size"), title: "Экран и яркость", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "home"), title: "Экран \"Домой\"", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "accessibility"), title: "Универсальный доступ", type: .withDisclosureOption)
//        ]
//    }
//}
//
////enum TypeOfSetting: String {
////    case withDisclosureOption
////    case withSwitchButton
////}
////
////struct Setting: Hashable {
////    var icon: UIImage?
////    var name: String
////    var status = String()
////    var type: TypeOfSetting
////}
////
////final class Model {
////    func createModels() -> [[Setting]] {
////        return [
////           [Setting(icon: UIImage(named: "airplane"), name: "Авиарежим", type: .withSwitchButton),
////            Setting(icon: UIImage(named: "wifi"), name: "Wi-Fi", status: "Не подключено", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "bluetooth"), name: "Bluetooth", status: "Вкл.", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "antenna.radiowaves.left.and.right"), name: "Сотовая связь", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "personalhotspot"), name: "Режим модема", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "vpn"), name: "VPN", type: .withSwitchButton)],
////            
////           [Setting(icon: UIImage(named: "bell.badge"), name: "Уведомления", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "speaker.wave.3.fill"), name: "Звуки, тактильные сигналы", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "moon.fill"), name: "Не беспокоить", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "hourglass"), name: "Экранное время", type: .withDisclosureOption)],
////            
////           [Setting(icon: UIImage(named: "gear"), name: "Основные", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "switch.2"), name: "Пункт управления", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "textformat.size"), name: "Экран и яркость", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "home"), name: "Экран \"Домой\"", type: .withDisclosureOption),
////            Setting(icon: UIImage(named: "accessibility"), name: "Универсальный доступ", type: .withDisclosureOption)]
////        ]
////    }
////}
