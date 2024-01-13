
import UIKit
import SnapKit

final class DetailView: UIView {

    // MARK: - Configuration
    
    private var models: [[Setting]] = []
    
    func configureView(with models: [[Setting]]) {
        self.models = models
    }
    
    // MARK: - UIElements
    
    private lazy var container: UIView = {
        let container = UIView()
        container.clipsToBounds = true
        container.layer.cornerRadius = 5
        container.backgroundColor = UIColor(named: "")
        return container
    }()
    
    private lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleAspectFit
        return icon
    }()
//    public var icon: UIImageView = {
//        let icon = UIImageView()
//        icon.image = UIImage(named: "")
//        icon.clipsToBounds = true
//        icon.contentMode = .scaleAspectFit
//        return icon
//    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "I promise, design will be impoved!"
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
            make.height.equalTo(75)
            make.width.equalTo(75)
        }
        
        icon.snp.makeConstraints { make in
            make.center.equalTo(container)
            make.height.equalTo(45)
            make.width.equalTo(45)
        }
        
        label.snp.makeConstraints { make in
            make.centerX.equalTo(icon)
            make.top.equalTo(icon.snp.bottom).offset(40)
        }
    }
}
