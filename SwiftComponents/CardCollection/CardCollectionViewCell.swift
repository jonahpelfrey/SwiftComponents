//
//  CardCollectionViewCell.swift
//  SwiftComponents
//
//  Created by Jonah Pelfrey on 6/10/19.
//  Copyright © 2019 Jonah Pelfrey. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    private lazy var card: CardView = {
        let card = CardView()
        card.topColor = SpectrumHarbor.dark
        card.bottomColor = SpectrumHarbor.mediumDark
        card.cornerRadius = 10
        card.shadowHeight = 5
        card.translatesAutoresizingMaskIntoConstraints = false
        return card
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    func sharedInit() {
        self.backgroundColor = .clear
        
        self.contentView.addSubview(card)
        
        NSLayoutConstraint.activate([
            card.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            card.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            card.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            card.heightAnchor.constraint(equalToConstant: 250)
        ])
        
    }
    
}
