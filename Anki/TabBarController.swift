//
//  ViewController.swift
//  Anki
//
//  Created by Sergei Poluboiarinov on 10.09.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupTabBar()
    }
    
    private func setupViews() {
        let reviewVC  = ReviewViewController()
        let addVC     = AddViewController()
        let notesVC   = NotesViewController()
        let tagsVC    = TagsViewController()
        let optionsVC = OptionsViewController()
        
        reviewVC.setTabBarImage(imageName: "clock.fill", title: "Review")
        addVC.setTabBarImage(imageName: "square.and.pencil", title: "Add")
        notesVC.setTabBarImage(imageName: "note.text", title: "Notes")
        tagsVC.setTabBarImage(imageName: "tag.fill", title: "Tags")
        optionsVC.setTabBarImage(imageName: "gearshape.fill", title: "Options")
        
        let reviewNC  = UINavigationController(rootViewController: reviewVC)
        let addNC     = UINavigationController(rootViewController: addVC)
        let notesNC   = UINavigationController(rootViewController: notesVC)
        let tagsNC    = UINavigationController(rootViewController: tagsVC)
        let optionsNC = UINavigationController(rootViewController: optionsVC)
        
        
        let tabBarList = [reviewNC, addNC, notesNC, tagsNC, optionsNC]
        
        viewControllers = tabBarList
    }
    
    private func hideNavigationBarLine(_ navigationBar: UINavigationBar) {
        let img = UIImage()
        navigationBar.shadowImage = img
        navigationBar.setBackgroundImage(img, for: .default)
        navigationBar.isTranslucent = true
    }

    private func setupTabBar() {
        tabBar.tintColor = appColor
        tabBar.isTranslucent = true
    }
}

extension UIViewController {
    func setStatusBar() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithTransparentBackground()
        navBarAppearance.backgroundColor = appColor
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }
    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
