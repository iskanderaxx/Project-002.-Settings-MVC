
import UIKit
import SnapKit

final class DetailView: UIView {

    // MARK: - Configuration
    
    private var models = [[Setting]]()
    
    func configureView(with models: [[Setting]]) {
        self.models = models
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
    
    // MARK: - Initializers & Lifecycle
    
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
        [icon, label].forEach { addSubview($0) }
    }
    
    private func setupLayout() {
        icon.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.height.equalTo(75)
            make.width.equalTo(75)
        }
        
        label.snp.makeConstraints { make in
            make.centerX.equalTo(icon)
            make.top.equalTo(icon.snp.bottom).offset(40)
        }
    }
}
