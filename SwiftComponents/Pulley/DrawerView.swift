//
//  PulleyView.swift
//  SwiftComponents
//
//  Created by Jonah Pelfrey on 6/10/19.
//  Copyright © 2019 Jonah Pelfrey. All rights reserved.
//

import UIKit

class DrawerView: UIView {
    
    public let handleHeight: CGFloat = 65
    
    public lazy var handleView: DrawerHandleView = {
        let pulleyHandle = DrawerHandleView()
        pulleyHandle.translatesAutoresizingMaskIntoConstraints = false
        return pulleyHandle
    }()
    
    public lazy var contentView: DrawerContentView = {
        let pulleyContent = DrawerContentView()
        pulleyContent.translatesAutoresizingMaskIntoConstraints = false
        return pulleyContent
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func sharedInit() {
        backgroundColor = .clear
        
        addSubview(handleView)
        NSLayoutConstraint.activate([
            handleView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            handleView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            handleView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            handleView.heightAnchor.constraint(equalToConstant: handleHeight)
        ])
        
        addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: handleView.bottomAnchor, constant: 0),
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
        
    }
}
