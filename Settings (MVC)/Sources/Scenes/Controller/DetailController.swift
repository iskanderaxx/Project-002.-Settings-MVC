
import UIKit

final class DetailController: UIViewController {

    // MARK: - Data & Configuration
    
    var models: SettingsModel?

    private var detailSettingsView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        models = SettingsModel()
        loadView()
        configureView()
    }
    
    override func loadView() {
        super.loadView()
        view = DetailView()
    }
}

private extension DetailController {
    func configureView() {
        guard let models = models?.createModels() else { return }
        models.forEach { [unowned self] model in
            detailSettingsView?.configureView(with: models)
        }
    }
}

