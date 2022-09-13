//
//  BottomButtonsView.swift
//  Anki
//
//  Created by Sergei Poluboiarinov on 13.09.2022.
//

import Foundation
import UIKit

class BottomButtonsView: UIView {
    
    let horizontalStackView   = UIStackView()
    let againStackView        = UIStackView()
    let hardStackView         = UIStackView()
    let goodStackView         = UIStackView()
    let easyStackView         = UIStackView()
    
    let againLabel  = UILabel()
    let hardLabel   = UILabel()
    let goodLabel   = UILabel()
    let easyLabel   = UILabel()
    
    let againButton = UIButton()
    let hardButton  = UIButton()
    let goodButton  = UIButton()
    let easyButton  = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
}

extension BottomButtonsView {
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 26
        
        againStackView.translatesAutoresizingMaskIntoConstraints = false
        againStackView.axis = .vertical
        againStackView.spacing = 8
        
        hardStackView.translatesAutoresizingMaskIntoConstraints = false
        hardStackView.axis = .vertical
        hardStackView.spacing = 8
        
        goodStackView.translatesAutoresizingMaskIntoConstraints = false
        goodStackView.axis = .vertical
        goodStackView.spacing = 8
        
        easyStackView.translatesAutoresizingMaskIntoConstraints = false
        easyStackView.axis = .vertical
        easyStackView.spacing = 8
        
        againLabel.translatesAutoresizingMaskIntoConstraints = false
        againLabel.text = "3m"
        againLabel.textAlignment = .center
        againLabel.textColor = .systemGray
        
        hardLabel.translatesAutoresizingMaskIntoConstraints = false
        hardLabel.text = "4d"
        hardLabel.textAlignment = .center
        hardLabel.textColor = .systemGray
        
        goodLabel.translatesAutoresizingMaskIntoConstraints = false
        goodLabel.text = "1mo"
        goodLabel.textAlignment = .center
        goodLabel.textColor = .systemGray
        
        easyLabel.translatesAutoresizingMaskIntoConstraints = false
        easyLabel.text = "2mo"
        easyLabel.textAlignment = .center
        easyLabel.textColor = .systemGray
        
        againButton.translatesAutoresizingMaskIntoConstraints = false
        againButton.configuration = .filled()
        //againButton.addTarget(self, action: #selector(againTapped), for: .primaryActionTriggered)
        againButton.setTitle("Again", for: [])
        againButton.layer.cornerRadius = 18
        againButton.clipsToBounds = true
        againButton.tintColor = appColor
        againButton.setTitleColor(.black, for: [])
        
        hardButton.translatesAutoresizingMaskIntoConstraints = false
        hardButton.configuration = .filled()
        //hardButton.addTarget(self, action: #selector(againTapped), for: .primaryActionTriggered)
        hardButton.setTitle("Hard", for: [])
        hardButton.layer.cornerRadius = 18
        hardButton.clipsToBounds = true
        hardButton.setTitleColor(.black, for: [])
        hardButton.tintColor = .systemGray6
        
        goodButton.translatesAutoresizingMaskIntoConstraints = false
        goodButton.configuration = .filled()
        //goodButton.addTarget(self, action: #selector(againTapped), for: .primaryActionTriggered)
        goodButton.setTitle("Good", for: [])
        goodButton.layer.cornerRadius = 18
        goodButton.clipsToBounds = true
        goodButton.setTitleColor(.black, for: [])
        goodButton.tintColor = .systemGray6
        
        easyButton.translatesAutoresizingMaskIntoConstraints = false
        easyButton.configuration = .filled()
        //easyButton.addTarget(self, action: #selector(againTapped), for: .primaryActionTriggered)
        easyButton.setTitle("Easy", for: [])
        easyButton.layer.cornerRadius = 18
        easyButton.clipsToBounds = true
        easyButton.setTitleColor(.black, for: [])
        easyButton.tintColor = .systemGray6
    }
    
    func layout() {
        
        againStackView.addArrangedSubview(againLabel)
        againStackView.addArrangedSubview(againButton)
        hardStackView.addArrangedSubview(hardLabel)
        hardStackView.addArrangedSubview(hardButton)
        goodStackView.addArrangedSubview(goodLabel)
        goodStackView.addArrangedSubview(goodButton)
        easyStackView.addArrangedSubview(easyLabel)
        easyStackView.addArrangedSubview(easyButton)
        horizontalStackView.addArrangedSubview(againStackView)
        horizontalStackView.addArrangedSubview(hardStackView)
        horizontalStackView.addArrangedSubview(goodStackView)
        horizontalStackView.addArrangedSubview(easyStackView)
        addSubview(horizontalStackView)
        
        NSLayoutConstraint.activate([
            bottomAnchor.constraint(equalToSystemSpacingBelow: horizontalStackView.bottomAnchor, multiplier: 15),
            horizontalStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            againButton.widthAnchor.constraint(equalToConstant: 70),
            againButton.heightAnchor.constraint(equalToConstant: 40),
            hardButton.widthAnchor.constraint(equalToConstant: 70),
            hardButton.heightAnchor.constraint(equalToConstant: 40),
            goodButton.widthAnchor.constraint(equalToConstant: 70),
            goodButton.heightAnchor.constraint(equalToConstant: 40),
            easyButton.widthAnchor.constraint(equalToConstant: 70),
            easyButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
