//
//  NftDescriptionTableViewCellScreen.swift
//  AppBackFront
//
//  Created by Bruno Matos Silva on 04/09/23.
//

import UIKit

class NftDescriptionTableViewCellScreen: UIView {
    
    lazy var idLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = UIColor(red: 240/255, green: 156/255, blue: 248/255, alpha: 1)
        return label
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        addSubview(idLabel)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            idLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            idLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            idLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            idLabel.heightAnchor.constraint(equalToConstant: 24),
            
            titleLabel.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: idLabel.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: idLabel.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
        ])
    }
    
}
