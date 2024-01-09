
import UIKit
import SnapKit

final class DetailViewController: UIViewController {
    
    // MARK: - Data & Configuration
    
    var setting: Setting? {
        didSet {
            if let iconName = setting?.icon {
                icon.image = UIImage(named: iconName)
            }
        }
    }
    
    // MARK: - UIElements
    
    public var icon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "")
        icon.clipsToBounds = true
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 4
        label.text = "I promise, design will be impoved!"
        label.clipsToBounds = true
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    
    // MARK: - Lyfecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup & Layout
    
    private func setupHierarchy() {
        [icon, label].forEach { view.addSubview($0) }
    }
    
    private func setupLayout() {
        icon.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(view)
            make.height.equalTo(75)
            make.width.equalTo(75)
        }
        
        label.snp.makeConstraints { make in
            make.centerX.equalTo(icon)
            make.top.equalTo(icon.snp.bottom).offset(40)
        }
    }
}
