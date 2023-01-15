//
//  ViewController.swift
//  SkyyLocs&Braiding
//
//  Created by Tina Stith-Twine on 1/10/23.
//

import UIKit

final class SLBTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    private func setUpTabs() {
        let questionsVC = SLBQuestionsViewController()
        let galleryVC = SLBGalleryViewController()
        let episodesVC = SLBEpisodesViewController()
        let settingsVC = SLBSettingsViewController()
        
        questionsVC.navigationItem.largeTitleDisplayMode = .automatic
        galleryVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: questionsVC)
        let nav2 = UINavigationController(rootViewController: galleryVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Questions",
                                       image: UIImage(systemName:"questionmark.circle"),
                                       tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Gallery",
                                       image: UIImage(systemName:"photo.artframe"),
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes",
                                       image: UIImage(systemName:"tv"),
                                       tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName:"gear"),
                                       tag: 4)

        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
             [nav1, nav2, nav3, nav4],
            animated: false
        )
        
        
    }

}

