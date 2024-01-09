//
//import UIKit
//import SnapKit
//
//final class SettingsView: UIView {
//    
//    // MARK: - Data & Configuraton
//    
//    func configureView(with model: Setting) {
//        settingLabel.text = model.title
//        settingIcon.image = model.icon
//        settingStatus.text = model.status
//        //        pageControl.numberOfPages = models.count
//        //        pageControl.currentPage = 0
//        //        selectedIndex = 0
//        //        collectionView.reloadData()
//    }
//    
//    //    var setting: Setting? {
//    //        didSet {
//    //            settingLabel.text = setting?.name
//    //            settingIcon.image = setting?.icon
//    //            settingStatus.text = setting?.status
//    //        }
//    //    }
//    
//    // MARK: - UIElements
//    
//    // 6. Пишем реализацию, создаем экземпляры UI-элементов
//    
//    //    private lazy var stackView: UIStackView = {
//    //        let view = UIStackView()
//    //        view.axis = .horizontal
//    //        view.spacing = 15
//    //        stackView.distribution = .equalSpacing
//    //        view.translatesAutoresizingMaskIntoConstraints = false
//    //        return view
//    //    }()
//    
//    private lazy var settingLabel: UILabel = {
//        let label = UILabel()
//        //        label.textColor = .black
//        label.textAlignment = .left
//        label.numberOfLines = 2
//        label.font = UIFont.systemFont(ofSize: 17)
//        return label
//    }()
//    
//    private lazy var settingIcon: UIImageView = {
//        let icon = UIImageView()
//        icon.clipsToBounds = true
//        icon.contentMode = .scaleAspectFit
//        return icon
//    }()
//    
//    private lazy var settingStatus: UILabel = {
//        let status = UILabel()
//        //        status.textColor = .lightGray
//        status.font = UIFont.systemFont(ofSize: 17)
//        return status
//    }()
//    
//    // MARK: - Initializers
//    
//    init() {
//        super.init(frame: .zero)
//        commonInitialier()
//    }
//    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        commonInitialier()
//    }
//    
//    private func commonInitialier() {
//        backgroundColor = .systemBackground
//        setupHierarchy()
//        setupLayout()
//    }
//    
//    //    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//    //        super.init(style: style, reuseIdentifier: reuseIdentifier)
//    //        setupHierarchy()
//    //        setupLayout()
//    //    }
//    //
//    //    required init?(coder: NSCoder) {
//    //        fatalError("init(coder:) has not been implemented")
//    //    }
//    
//    // MARK: - Setup & Layout
//    
//    private func setupHierarchy() {
//        [settingLabel, settingIcon, settingStatus].forEach {
//            addSubview($0)
//        }
//    }
//    //        addSubview(stackView)
//    //        stackView.addArrangedSubview(settingLabel)
//    //        stackView.addArrangedSubview(settingIcon)
//    //        stackView.addArrangedSubview(settingStatus)
//    
//    private func setupLayout() {
//        //        stackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        //        stackView.leadingAnchor.constraint(equal
//        //
//        
//        settingLabel.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//            make.left.equalTo(settingIcon).offset(40)
//        }
//        
//        settingIcon.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//            make.left.equalToSuperview().offset(15)
//            make.height.equalTo(28)
//            make.width.equalTo(28)
//        }
//        
//        settingStatus.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//            make.right.equalToSuperview().offset(-20)
//        }
//    }
//}

