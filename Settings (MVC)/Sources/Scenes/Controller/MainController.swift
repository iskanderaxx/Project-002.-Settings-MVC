
import UIKit

final class MainController: UIViewController {
    
    // MARK: - Data & Configuration
    
    var model: SettingsModel?
    
    private var settingsView: MainView? {
        guard isViewLoaded else { return nil }
        return view as? MainView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        model = SettingsModel()
        loadView()
        configureView()
    }
    
    override func loadView() {
        super.loadView()
        view = MainView()
    }
}

    // MARK: - Configuration

private extension MainController {
    func configureView() {
        guard let models = model?.createModels() else { return }
        models.forEach { [unowned self] model in
            settingsView?.configureView(with: [model])
        }
    }
//    
//    func selectedCell(model: Setting) {
//        let detailViewController = DetailController()
//        detailViewController.model = model
//        navigationController?.pushViewController(detailViewController, animated: true)
//    }
}
