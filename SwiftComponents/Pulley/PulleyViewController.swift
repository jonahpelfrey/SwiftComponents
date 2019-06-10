//
//  PulleyController.swift
//  SwiftComponents
//
//  Created by Jonah Pelfrey on 6/10/19.
//  Copyright © 2019 Jonah Pelfrey. All rights reserved.
//

import UIKit

public protocol PulleyDrawerViewDelegate: class {
    
}

public protocol PulleyPrimaryViewDelegate: class {
    
}

public enum PulleyState {
    case collapsed
    case partiallyOpen
    case open
}

class PulleyViewController: UIViewController {
    
    fileprivate let drawerCollapsedHeight: CGFloat = 65
    fileprivate let drawerPartiallyRevealedHeight: CGFloat = 300
    fileprivate let drawerOpenHeight: CGFloat = 600
    
    private var primaryViewController: UIViewController!
    private var drawerViewController: UIViewController!
    private var drawerHeightConstraint: NSLayoutConstraint!
    
    private lazy var primaryContainerView: UIView = {
        let primaryView = UIView()
        primaryView.translatesAutoresizingMaskIntoConstraints = false
        primaryView.backgroundColor = SpectrumBlue.mediumDark
        return primaryView
    }()
    
    private lazy var drawerContainerView: DrawerView = {
        let containerView = DrawerView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = SpectrumBlue.mediumLight
        return containerView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    fileprivate func setupViews() {
        view.backgroundColor = .white
        
        view.addSubview(primaryContainerView)
        NSLayoutConstraint.activate([
            primaryContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            primaryContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            primaryContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            primaryContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -drawerCollapsedHeight)
        ])
        
        view.addSubview(drawerContainerView)
        NSLayoutConstraint.activate([
            drawerContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            drawerContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            drawerContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
        
        drawerHeightConstraint = drawerContainerView.heightAnchor.constraint(equalToConstant: drawerCollapsedHeight)
        drawerHeightConstraint.isActive = true
    }
    
    public var drawerContentViewController: UIViewController? {
        didSet {
            guard let controller = drawerContentViewController else { return }
            
            controller.view.translatesAutoresizingMaskIntoConstraints = false
            self.drawerContainerView.contentView.addSubview(controller.view)
            addChild(controller)
            controller.didMove(toParent: self)
        }
    }
}
