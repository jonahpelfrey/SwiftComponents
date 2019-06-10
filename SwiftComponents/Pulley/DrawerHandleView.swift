//
//  PulleyHandleView.swift
//  SwiftComponents
//
//  Created by Jonah Pelfrey on 6/10/19.
//  Copyright © 2019 Jonah Pelfrey. All rights reserved.
//

import UIKit

class DrawerHandleView: UIView {
    
    public var titleText: String = "" {
        didSet {
            titleLabel.text = titleText
        }
    }
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = self.titleText
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        return label
    }()
    
    private lazy var grabber: UIView = {
        let grabber = UIView()
        grabber.translatesAutoresizingMaskIntoConstraints = false
        grabber.layer.cornerRadius = 2.5
        grabber.backgroundColor = .lightGray
        return grabber
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func sharedInit() {
        self.layer.backgroundColor = UIColor(hex: 0xEFEFEF).cgColor
        self.layer.cornerRadius = 10
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        self.addSubview(grabber)
        NSLayoutConstraint.activate([
            grabber.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            grabber.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            grabber.widthAnchor.constraint(equalToConstant: 40),
            grabber.heightAnchor.constraint(equalToConstant: 5)
        ])
        
        self.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0)
        ])
    }
}
