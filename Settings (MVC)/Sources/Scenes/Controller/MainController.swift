
import UIKit

final class MainController: UIViewController {
    
    // MARK: - Data & Configuration
    
    var models: SettingsModel?
    
    private var settingsView: MainView? {
        guard isViewLoaded else { return nil }
        return view as? MainView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        models = SettingsModel()
        loadView()
        configureView()
    }
    
    override func loadView() {
        super.loadView()
        view = MainView()
    }

    func configureView() {
        guard let models = models?.createModels() else { return }
        models.forEach { [unowned self] model in
            settingsView?.configureView(with: models)
        }
    }
}
