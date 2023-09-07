//
//  ListOfTransactionTableViewCellScreen.swift
//  AppBackFront
//
//  Created by Bruno Matos Silva on 05/09/23.
//

import UIKit

class ListOfTransactionTableViewCellScreen: UIView {

    
    lazy var idTransactionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    lazy var transactionImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var priceEthLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    lazy var valueInDollarLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    lazy var dateEndHourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        addSubview(idTransactionLabel)
        addSubview(transactionImageView)
        addSubview(priceEthLabel)
        addSubview(valueInDollarLabel)
        addSubview(dateEndHourLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            transactionImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            transactionImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            transactionImageView.heightAnchor.constraint(equalToConstant: 20),
            transactionImageView.widthAnchor.constraint(equalToConstant: 20),
            
            idTransactionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            idTransactionLabel.leadingAnchor.constraint(equalTo: transactionImageView.trailingAnchor, constant: 10),
            
            dateEndHourLabel.topAnchor.constraint(equalTo: idTransactionLabel.bottomAnchor, constant: 5),
            dateEndHourLabel.leadingAnchor.constraint(equalTo: idTransactionLabel.leadingAnchor),
            
            priceEthLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            priceEthLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            
            valueInDollarLabel.topAnchor.constraint(equalTo: priceEthLabel.bottomAnchor, constant: 5),
            valueInDollarLabel.trailingAnchor.constraint(equalTo: priceEthLabel.trailingAnchor),
            
        ])
    }
    
}
