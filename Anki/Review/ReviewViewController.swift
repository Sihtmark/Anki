//
//  ReviewViewController.swift
//  Anki
//
//  Created by Sergei Poluboiarinov on 11.09.2022.
//

import Foundation
import UIKit
import SwiftUI

class ReviewViewController: UIViewController {
    
    let tagsButton = UIButton()
    let tagsString = UIView()
    let bottomButtonsView = BottomButtonsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemFill
        style()
        layout()
    }
    
    func style() {
        
       
        tagsButton.translatesAutoresizingMaskIntoConstraints = false
        //tagsButton.addTarget(self, action: #selector(allNotesTapped), for: .primaryActionTriggered)
        tagsButton.setTitleColor(.black, for: [])
        tagsButton.setTitle("5 Tags ⌵", for: [])
        
        tagsString.translatesAutoresizingMaskIntoConstraints = false
        tagsString.backgroundColor = .black
        
        bottomButtonsView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout() {
        
        view.addSubview(tagsButton)
        view.addSubview(tagsString)
        view.addSubview(bottomButtonsView)
       
        
        NSLayoutConstraint.activate([
            tagsButton.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 7),
            tagsButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            tagsString.topAnchor.constraint(equalToSystemSpacingBelow: tagsButton.bottomAnchor, multiplier: 0.01),
            tagsString.leadingAnchor.constraint(equalTo: tagsButton.leadingAnchor),
            tagsString.trailingAnchor.constraint(equalTo: tagsButton.trailingAnchor)
        ])
        tagsString.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        NSLayoutConstraint.activate([
            bottomButtonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            view.bottomAnchor.constraint(equalTo: bottomButtonsView.bottomAnchor)
        ])
    }
    
}

