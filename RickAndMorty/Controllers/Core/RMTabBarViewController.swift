//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Aleksandr Aniskin on 07.02.2023.
//

import UIKit

/// Controller to house tabs and root tab controllers
final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }

    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locatinsVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locatinsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locatinsVC)
        let nav3 = UINavigationController(rootViewController: episodeVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters",
                                            image: UIImage(systemName: "person.2"),
                                            tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locatins",
                                            image: UIImage(systemName: "globe.europe.africa"),
                                            tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episode",
                                            image: UIImage(systemName: "tv"),
                                            tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings",
                                            image: UIImage(systemName: "gearshape.2"),
                                            tag: 4)
        
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [nav1, nav2, nav3, nav4],
            animated: true
        )
    }
}

