
import UIKit
import SnapKit

final class MainTableViewCell: UITableViewCell {
    
    // MARK: - Configuration
    
    static let identifier = "MainTableViewCell"
    
    func configureView(with model: Setting) {
        settingLabel.text = model.title
        settingStatus.text = model.status
        settingIcon.image = UIImage(named: model.icon)
        if let color = BackgroundColor(rawValue: model.backgroundColor) {
            settingIconContainer.backgroundColor = color.containerColor
        }
    }
    
    // MARK: - UIElements
    
    private lazy var settingLabel: UILabel = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        return name
    }()
    
    private lazy var settingIconContainer: UIView = {
        let container = UIView()
        container.clipsToBounds = true
        container.layer.cornerRadius = 5
        container.backgroundColor = UIColor(named: "")
        return container
    }()
    
    private lazy var settingIcon: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    private lazy var settingStatus: UILabel = {
        let status = UILabel()
        let textColor = traitCollection.userInterfaceStyle == .dark ? UIColor.white : UIColor.systemGray
        status.font = UIFont.systemFont(ofSize: 17)
        status.textColor = textColor
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
        settingIconContainer.addSubview(settingIcon)
        
        [settingLabel, settingIconContainer, settingStatus].forEach { contentView.addSubview($0) }
    }
    
    private func setupLayout() {
        settingLabel.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.left.equalTo(settingIconContainer).offset(40)
        }
        
        settingIconContainer.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.left.equalTo(contentView).offset(15)
            make.height.equalTo(28)
            make.width.equalTo(28)
        }
        
        settingIcon.snp.makeConstraints { make in
            make.center.equalTo(settingIconContainer)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        
        settingStatus.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.right.equalTo(contentView).offset(-12)
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.accessoryView = nil
    }
}

// Создание обертки в виде цветовых перечислений, чтобы в  Модели не было UIKit

enum BackgroundColor: String {
    case orange
    case blue
    case green
    case red
    case pink
    case indigo
    case gray
    case black
    case white
}

extension BackgroundColor {
    var containerColor: UIColor {
        switch self {
        case .orange:
            return UIColor.systemOrange
        case .blue:
            return UIColor.systemBlue
        case .green:
            return UIColor.systemGreen
        case .red:
            return UIColor.systemRed
        case .pink:
            return UIColor.systemPink
        case .indigo:
            return UIColor.systemIndigo
        case .gray:
            return UIColor.systemGray
        case .black:
            return UIColor.black
        case .white:
            return UIColor.white
        }
    }
}
