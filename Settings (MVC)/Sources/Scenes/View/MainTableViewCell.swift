
import UIKit
import SnapKit

final class MainTableViewCell: UITableViewCell {
    
    // MARK: - Configuration
    
    static let identifier = "MainTableViewCell"
    
    func configureView(with model: Setting) {
        settingLabel.text = model.title
        settingStatus.text = model.status
        settingIcon.image = UIImage(named: model.icon)
    }
    
    func configureColors(with icon: UIImage) {
        settingIcon.image = icon
    }
    
    // MARK: - UIElements
    
    private lazy var settingLabel: UILabel = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 17)
        return name
    }()
    
    private lazy var settingIcon: UIImageView = {
        let icon = UIImageView()
        icon.clipsToBounds = true
        icon.contentMode = .scaleAspectFit
        icon.backgroundColor = .systemBlue
        icon.layer.cornerRadius = 5
        return icon
    }()
    
    private lazy var settingStatus: UILabel = {
        let status = UILabel()
        status.font = UIFont.systemFont(ofSize: 17)
        return status
    }()
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup & Layout
    
    private func setupHierarchy() {
        [settingLabel, settingIcon, settingStatus].forEach {
            contentView.addSubview($0)
        }
    }
    
    private func setupLayout() {
        settingLabel.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.left.equalTo(settingIcon).offset(40)
        }
        
        settingIcon.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.left.equalTo(contentView).offset(15)
            make.height.equalTo(23)
            make.width.equalTo(23)
        }
        
        settingStatus.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.right.equalTo(contentView).offset(-20)
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.accessoryView = nil
    }
}
