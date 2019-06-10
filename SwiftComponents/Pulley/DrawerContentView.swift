//
//  PulleyContentView.swift
//  SwiftComponents
//
//  Created by Jonah Pelfrey on 6/10/19.
//  Copyright © 2019 Jonah Pelfrey. All rights reserved.
//

import UIKit

class DrawerContentView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func sharedInit() {
        self.layer.backgroundColor = UIColor(hex: 0xc6c4c4).cgColor
    }
}

