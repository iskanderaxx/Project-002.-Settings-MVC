
import UIKit

final class DetailController: UIViewController {

    // MARK: - State
    
    var setting: Setting?
    
    private var detailView: DetailView? {
        return view as? DetailView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadView()
        configureView()
    }
    
    override func loadView() {
        super.loadView()
        view = DetailView()
    }
    
    // MARK: - Configuration
    
    func configureView() {
        guard let setting = setting else { return }
        detailView?.configureView(with: setting)
    }
}
