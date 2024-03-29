
import UIKit
import SnapKit

protocol MainViewDelegate: AnyObject {
    func didSelectSetting(_ setting: Setting)
}

final class MainView: UIView {
    
    // MARK: - Configuration
    
    private var models = [[Setting]]()
    
    weak var delegate: MainViewDelegate?
    
    func configureView(with models: [[Setting]]) {
        self.models = models
        tableView.reloadData()
    }
    
    // MARK: - UIElements
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.identifier)
        return tableView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInitialier()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInitialier() {
        backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup & Layout
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
        
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension MainView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        46
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier, for: indexPath) as? MainTableViewCell
        
        let typeOfAccessory = models[indexPath.section][indexPath.row].accessoryType
        let switchButton = UISwitch(frame: CGRect.zero) as UISwitch
        
        let model = models[indexPath.section][indexPath.row]
        
        cell?.configureView(with: model)
        cell?.accessoryType = .disclosureIndicator
        switchButton.isOn = false
        
        switch typeOfAccessory {
        case .withDisclosure:
            cell?.accessoryType = .disclosureIndicator
        case .withSwitch:
            cell?.accessoryView = switchButton
            cell?.selectionStyle = .none
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let settingSelected = models[indexPath.section][indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        if settingSelected.accessoryType == .withDisclosure {
            delegate?.didSelectSetting(settingSelected)
        } else {
            print("Detailed view не работает для этой ячейки.")
        }
    }
}
