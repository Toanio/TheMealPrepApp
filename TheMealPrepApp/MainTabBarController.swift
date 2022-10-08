//
//  MainTabBarController.swift
//  TheMealPrepApp
//
//  Created by c.toan on 08.10.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        setTabBarApperance()
    }
    
    private func generateTabBar() {
        viewControllers = [
        generateVC(
            viewController: HomePageViewController(),
            image: UIImage(systemName: "house")),
        generateVC(
            viewController: MostLikedViewController(),
            image: UIImage(systemName: "heart")),
        generateVC(
            viewController: ProfileUserViewController(),
            image: UIImage(systemName: "person.circle"))]
    }
    
    private func generateVC(viewController: UIViewController, image: UIImage?) -> UIViewController {
        
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabBarApperance() {
        
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
        
    }

}
