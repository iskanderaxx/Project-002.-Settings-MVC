
import UIKit
import SnapKit

final class MainTableViewCell: UITableViewCell {
    
    // MARK: - State
    
    var setting: Setting? {
        didSet {
            settingLabel.text = setting?.name
            settingIcon.image = setting?.icon
            settingStatus.text = setting?.status
        }
    }
    
    // MARK: - UIElements
    
    private lazy var settingLabel: UILabel = {
        let name = UILabel()
        name.textColor = .black
        name.font = UIFont.systemFont(ofSize: 17)
        return name
    }()
    
    private lazy var settingIcon: UIImageView = {
        let icon = UIImageView()
        icon.clipsToBounds = true
        return icon
    }()
    
    private lazy var settingStatus: UILabel = {
        let status = UILabel()
        status.textColor = .lightGray
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
            make.height.equalTo(28)
            make.width.equalTo(28)
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
        self.setting = nil
    }
}
