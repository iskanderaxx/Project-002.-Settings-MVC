
import UIKit

final class DetailController: UIViewController {

    // MARK: - Data & Configuration
    
    var model: SettingsModel?

    private var detailSettingsView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model = SettingsModel()
        loadView()
        configureView()
    }
    
    override func loadView() {
        super.loadView()
        view = DetailView()
    }
}

    // MARK: - Configuration

extension DetailController {
    func configureView() {
        guard let models = model?.createModels() else { return }
        models.forEach { [unowned self] model in
            detailSettingsView?.configureView(with: [model])
        }
    }
}

