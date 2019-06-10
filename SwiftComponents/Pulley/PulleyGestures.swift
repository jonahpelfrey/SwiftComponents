//
//  PulleyViewController.swift
//  SwiftComponents
//
//  Created by Jonah Pelfrey on 6/10/19.
//  Copyright © 2019 Jonah Pelfrey. All rights reserved.
//

import UIKit

public protocol PulleyViewDelegate: class {
    func didChangePosition(position: CGFloat)
}

class PulleyGestures: UIViewController {
    
    private var pulleyPosition: PulleyState = .collapsed
    public let baseHeight: CGFloat = 65
    public weak var delegate: PulleyViewDelegate?
    
    private lazy var pulleyView: DrawerView = {
        let pulleyView = DrawerView()
        pulleyView.translatesAutoresizingMaskIntoConstraints = false
        return pulleyView
    }()
    
    private var gestures: [UIGestureRecognizer] = [UIGestureRecognizer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupGestures()
    }
    
    func setupViews() {
        view.backgroundColor = SpectrumBlue.mediumLight
        view.addSubview(pulleyView)
        
        NSLayoutConstraint.activate([
            pulleyView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            pulleyView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            pulleyView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            pulleyView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
        ])
    }
    
    func setupGestures() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        pulleyView.handleView.addGestureRecognizer(tapGesture)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipeUp(_:)))
        swipeUp.direction = .up
        pulleyView.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipeDown(_:)))
        swipeDown.direction = .down
        pulleyView.addGestureRecognizer(swipeDown)
        
        gestures.append(contentsOf: [tapGesture, swipeUp, swipeDown])
    }
    
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
        print("Tapped Handle")
        switch pulleyPosition {
        case .collapsed:
            print("collapsed")
            pulleyPosition = .partiallyOpen
            delegate?.didChangePosition(position: 200)
            break
        case .partiallyOpen:
            print("partiallyOpen")
            pulleyPosition = .open
            delegate?.didChangePosition(position: 600)
            break
        case .open:
            print("open")
            pulleyPosition = .collapsed
            delegate?.didChangePosition(position: 65)
            break
        }
    }
    
    @objc func handleSwipeDown(_ gesture: UISwipeGestureRecognizer) {
        print("Swiped Down")
    }
    
    @objc func handleSwipeUp(_ gesture: UISwipeGestureRecognizer) {
        print("Swiped Up")
    }
}
