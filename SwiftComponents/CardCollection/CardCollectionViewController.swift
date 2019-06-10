//
//  CardCollectionViewController.swift
//  SwiftComponents
//
//  Created by Jonah Pelfrey on 6/10/19.
//  Copyright © 2019 Jonah Pelfrey. All rights reserved.
//

import UIKit

class CardCollectionViewController: UIViewController {
    
    private let cellId: String = "CardCollectionCellId"
    
    private lazy var cardCollection: CardCollectionView = {
        let cardCollection = CardCollectionView()
        cardCollection.translatesAutoresizingMaskIntoConstraints = false
        return cardCollection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        view.backgroundColor = .white
        view.addSubview(cardCollection)
        
        cardCollection.collectionView.dataSource = self
        cardCollection.register(cellClass: CardCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
        NSLayoutConstraint.activate([
            cardCollection.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            cardCollection.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            cardCollection.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            cardCollection.heightAnchor.constraint(equalToConstant: 300)
        ])
    }

}

extension CardCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.cardCollection.collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CardCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}

