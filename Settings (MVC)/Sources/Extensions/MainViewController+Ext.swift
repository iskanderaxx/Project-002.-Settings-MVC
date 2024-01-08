
import UIKit

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings?[section].count ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        45
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? MainTableViewCell
        
        let typeOfAccessory = settings?[indexPath.section][indexPath.row].type
        let switchButton = UISwitch(frame: CGRectZero) as UISwitch
        
        cell?.setting = settings?[indexPath.section][indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        switchButton.isOn = false
                
        switch typeOfAccessory {
        case .withDisclosureOption:
            cell?.accessoryType = .disclosureIndicator
        case .withSwitchButton:
            cell?.accessoryView = switchButton
            cell?.selectionStyle = .none
        default:
            break
        }
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController()
        if settings![indexPath.section][indexPath.row].type == .withDisclosureOption {
            tableView.deselectRow(at: indexPath, animated: true)
            viewController.setting = settings?[indexPath.section][indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
            print("Выбрана ячейка \(settings?[indexPath.section][indexPath.row].name ?? "")")
        } else {
            print("Выбрана ячейка \(settings?[indexPath.section][indexPath.row].name ?? ""), detailed view для нее не работает.")
        }
    }
}
