//
//  ProfileImageTableViewCellScreen.swift
//  AppBackFront
//
//  Created by Bruno Matos Silva on 06/09/23.
//

import UIKit

class ProfileImageTableViewCellScreen: UIView {
    
    lazy var nftImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "nft")
        imageView.contentMode = .scaleToFill
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        addSubview(nftImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            nftImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            nftImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            nftImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            nftImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
}
