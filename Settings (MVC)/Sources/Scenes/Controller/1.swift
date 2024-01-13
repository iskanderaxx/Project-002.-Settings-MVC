//
//import UIKit
//
////protocol MainViewDelegate {
////    func disSelectRow(at indexPath: IndexPath)
////}
//
//final class MainController: UIViewController {
//    
//    // MARK: - Data & Configuration
//    
//    var models: SettingsModel?
//    
//    private var settingsView: MainView? {
//        guard isViewLoaded else { return nil }
//        return view as? MainView
//    }
//    
//    // MARK: - Lifecycle
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        title = "Settings"
//        navigationController?.navigationBar.prefersLargeTitles = true
//        models = SettingsModel()
//        loadView()
//        configureView()
//    }
//    
//    override func loadView() {
//        super.loadView()
//        view = MainView()
//    }
//}
//
//extension MainController { // : MainViewDelegate
//    
//    func configureView() {
//        guard let models = models?.createModels() else { return }
//        models.forEach { [unowned self] model in
//            settingsView?.configureView(with: models)
//        }
//    }
////
////    func disSelectRow(at indexPath: IndexPath) {
////        let selectionController = DetailController()
////        if let selectedModel = models?[indexPath.section][indexPath.row] {
////            selectionController.models = selectedModel
////            navigationController?.pushViewController(selectionController, animated: true)
////            print("Выбрана ячейка \(models[indexPath.section][indexPath.row].title)")
////        } else {
////            print("Выбрана ячейка \(models[indexPath.section][indexPath.row].title), detailed view для нее не работает.")
////        }
////    }
//}
    
//    func selectCellWith(model: SettingsModel) {
//        let selectionController = DetailController()
//        selectionController.models = model
//        navigationController?.pushViewController(selectionController, animated: true)
//    }

//func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    delegate?.disSelectRow(at: indexPath)
//        if models[indexPath.section][indexPath.row].accessoryType == .withDisclosure {
//            tableView.deselectRow(at: indexPath, animated: true)
//            MainController.selectCellWith(models)
//            print("Выбрана ячейка \(models[indexPath.section][indexPath.row].title)")
//        } else {
//            print("Выбрана ячейка \(models[indexPath.section][indexPath.row].title), detailed view для нее не работает.")
//        }
    
    //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        let viewController = DetailViewController()
    //        if settings![indexPath.section][indexPath.row].type == .withDisclosureOption {
    //            tableView.deselectRow(at: indexPath, animated: true)
    
    //            viewController.setting = settings?[indexPath.section][indexPath.row]
    
    //            navigationController?.pushViewController(viewController, animated: true)
    //            print("Выбрана ячейка \(settings?[indexPath.section][indexPath.row].title ?? "")")
    //        } else {
    //            print("Выбрана ячейка \(settings?[indexPath.section][indexPath.row].title ?? ""), detailed view для нее не работает.")
    //        }
    //    }
    //}
