
import UIKit
import SnapKit

final class DetailView: UIView {

    // MARK: - Configuration
    
    private var setting: Setting?
    
    func configureView(with setting: Setting) {
        self.setting = setting
    }
    
    // MARK: - UIElements
    
    private lazy var container: UIView = {
        let container = UIView()
        container.clipsToBounds = true
        container.layer.cornerRadius = 5
        container.backgroundColor = .lightGray
        return container
    }()
    
    private lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "underConstruction")
        icon.contentMode = .scaleAspectFill
        return icon
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 2
        label.text = "The page is under construction."
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        return label
    }()
    
    // MARK: - Initializers & Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInitialier()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInitialier() {
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup & Layout
    
    private func setupHierarchy() {
        container.addSubview(icon)
        
        [container, label].forEach { addSubview($0) }
    }
    
    private func setupLayout() {
        container.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.height.equalTo(175)
            make.width.equalTo(175)
        }
        
        icon.snp.makeConstraints { make in
            make.center.equalTo(container)
        }
        
        label.snp.makeConstraints { make in
            make.centerX.equalTo(container)
            make.top.equalTo(icon.snp.bottom).offset(40)
        }
    }
}
