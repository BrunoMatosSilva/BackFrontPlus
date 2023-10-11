//
//  CustomNavBar.swift
//  AppMusicBF
//
//  Created by Bruno Matos Silva on 01/10/23.
//

import UIKit

class CustomNavBar: UIView {
    
    lazy var categoryTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    lazy var cardTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    lazy var featureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    lazy var cardImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    lazy var overlayView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black.withAlphaComponent(0.7)
        return view
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
        self.addSubview(self.cardImage)
        self.addSubview(self.overlayView)
        self.addSubview(self.categoryTitleLabel)
        self.addSubview(self.cardTitleLabel)
        self.addSubview(self.featureLabel)
    }
    
    private func setupConstraints() {
        
        self.cardImage.pin(to: self)
        self.overlayView.pin(to: self)
        
        NSLayoutConstraint.activate([
        
            self.categoryTitleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 5),
            self.categoryTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.categoryTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            self.cardTitleLabel.topAnchor.constraint(equalTo: self.categoryTitleLabel.bottomAnchor, constant: 5),
            self.cardTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.cardTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            self.featureLabel.topAnchor.constraint(equalTo: self.cardTitleLabel.bottomAnchor, constant: 5),
            self.featureLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.featureLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
        
        ])
    }
    
    public func setupView(data: CardViewModel) {
        self.cardTitleLabel.text = data.cardTitle
        self.categoryTitleLabel.text = data.categoryName
        self.cardImage.image = UIImage(named: data.cardImage ?? "")
        self.featureLabel.attributedText = .featureText(data.likeCount ?? "", data.duration ?? "")
    }
    
}
