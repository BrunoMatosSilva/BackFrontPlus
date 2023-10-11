//
//  DetailTableViewCellScreen.swift
//  AppMusicBF
//
//  Created by Bruno Matos Silva on 01/10/23.
//

import UIKit

class DetailTableViewCellScreen: UIView {
    
    lazy var thumbImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "demo")
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        label.text = "Rosemarys baby"
        return label
    }()
    
    lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.text = "Kryzslot Komeda"
        return label
    }()
    
    lazy var likeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .lightGray
        button.setBackgroundImage(UIImage(named: "love")?.withRenderingMode(.alwaysTemplate), for: .normal)
        return button
    }()
    
    lazy var moreButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .lightGray
        button.setBackgroundImage(UIImage(named: "more")?.withRenderingMode(.alwaysTemplate), for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.addSubview(self.thumbImage)
        self.addSubview(self.titleLabel)
        self.addSubview(self.subTitleLabel)
        self.addSubview(self.likeButton)
        self.addSubview(self.moreButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.thumbImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.thumbImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.thumbImage.heightAnchor.constraint(equalToConstant: 60),
            self.thumbImage.widthAnchor.constraint(equalToConstant: 60),
            
            self.titleLabel.leadingAnchor.constraint(equalTo: self.thumbImage.trailingAnchor, constant: 15),
            self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 17),
            
            self.subTitleLabel.leadingAnchor.constraint(equalTo: self.thumbImage.trailingAnchor, constant: 15),
            self.subTitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 4),
            
            self.moreButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            self.moreButton.heightAnchor.constraint(equalToConstant: 35),
            self.moreButton.widthAnchor.constraint(equalToConstant: 35),
            self.moreButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            self.likeButton.trailingAnchor.constraint(equalTo: self.moreButton.leadingAnchor, constant: -15),
            self.likeButton.heightAnchor.constraint(equalToConstant: 35),
            self.likeButton.widthAnchor.constraint(equalToConstant: 35),
            self.likeButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
        ])
    }
    
    public func setupCell(data: CardListModel) {
        self.titleLabel.text = data.listTitle
        self.subTitleLabel.text = data.listSubtitle
        self.thumbImage.image = UIImage(named: data.listImage ?? "")
    }
    
}
