//
//import UIKit
//
///* 2. Начинаем с Controller'а, с "мозга" программы. Тут в классе пишем вычисляемое свойство, которое преобразовывает тип стартовой родительской view в SettingView - чтобы потом можно было в будущем обращаться к элементам View. Делаем проверку на nil.*/
//
//final class SettingsController: UIViewController {
//    
//    // MARK: - Data
//    // 5. Создаем экземпляр Модели в Контроллере, и инициализируем ее в методе viewDidLoad
//    var model: SettingsModel?
//    
//    private var settingsView: SettingsView? {
//        guard isViewLoaded else { return nil }
//        return view as? SettingsView
//    }
//    
//    // MARK: - Lifecycle
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        title = "Settings"
//        navigationController?.navigationBar.prefersLargeTitles = true
//        model = SettingsModel()
//        configureView()
//    }
//    
//    // 3. Присваиваем View значение созданного класса. Так мы показываем, что во View будет то, что у нас будет в этом классе. Идем в модель.
//    override func loadView() {
//        view = SettingsView()
//    }
//}
//    
//    // Configuration
//
//private extension SettingsController {
//    func configureView() {
//        guard let models = model?.createModels() else { return }
//        models.forEach { [unowned self] model in
//            settingsView?.configureView(with: model)
//        }
//    }
//}
