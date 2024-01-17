
import UIKit

final class MainController: UITableViewController {
    
    // MARK: - State
    
    var models: [[Setting]]? // SettingsModel?
    
    private var mainView: MainView? {
        return view as? MainView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.navigationBar.prefersLargeTitles = true
        models = SettingsModel().createModels()
        
        if let mainView = mainView {
            mainView.navigationController = navigationController
        }
        
        loadView()
        configureView()
    }
    
    override func loadView() {
        super.loadView()
        view = MainView()
    }
    
    // MARK: - Configuration
    
    func configureView() {
        guard let models = models else { return }
        mainView?.configureView(with: models)
    }
}
    
//extension MainController {
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let settingSelected = models?[indexPath.section][indexPath.row],
//            settingSelected.accessoryType == .withDisclosure {
//            tableView.deselectRow(at: indexPath, animated: true)
//            let controller = DetailController()
//            controller.setting = settingSelected
//            navigationController?.pushViewController(controller, animated: true)
//            print("Выбрана ячейка \(models?[indexPath.section][indexPath.row].title ?? "")")
//        } else {
//            print("Выбрана ячейка \(models?[indexPath.section][indexPath.row].title ?? ""), detailed view для нее не работает.")
//        }
//    }
//}

