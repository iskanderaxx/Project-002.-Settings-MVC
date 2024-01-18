
import UIKit

final class MainController: UITableViewController, MainViewDelegate {
    
    // MARK: - State
    
    var models: [[Setting]]?
    
    private var mainView: MainView? {
        return view as? MainView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        models = SettingsModel().createModels()
        loadView()
        configureView()
        mainView?.delegate = self
    }
    
    override func loadView() {
        super.loadView()
        view = MainView()
    }
}

extension MainController {

    // MARK: - Configuration
    
    func configureView() {
        guard let models = models else { return }
        mainView?.configureView(with: models)
    }
    
    func didSelectSetting(_ setting: Setting) {
        let controller = DetailController()
        controller.setting = setting
        navigationController?.pushViewController(controller, animated: true)
        print("Выбрана ячейка \(setting.title)")
    }
}

