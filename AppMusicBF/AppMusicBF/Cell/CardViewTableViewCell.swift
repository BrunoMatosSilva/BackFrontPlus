//
//  CardViewTableViewCell.swift
//  AppMusicBF
//
//  Created by Bruno Matos Silva on 26/09/23.
//

import UIKit

class CardViewTableViewCell: UITableViewCell {
    
    static let identifier:String = String(describing: CardViewTableViewCell.self)
    
    lazy var cardView: CustomCardView = {
        let view = CustomCardView(mode: .card)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupView()
        self.setupConstraints()
        selectionStyle = .none
    }
    
    public func setupCell(data: CardViewModel) {
        self.cardView.setupView(data: data)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        contentView.addSubview(cardView)
    }
    
    fileprivate func setupConstraints() {
        self.cardView.pin(to: self)
    }
    
}
