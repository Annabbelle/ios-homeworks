//
//  SceneDelegate.swift
//  
//
//  Created by MacBook on 11.02.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        window?.makeKeyAndVisible()
        
        let tabBarController = UITabBarController()
        tabBarController.tabBar.backgroundColor = .white
        
        let firstVC = FeedViewController()
        firstVC.view.backgroundColor = .darkGray
        
        let secondVC = ProfileViewController()
        secondVC.view.backgroundColor = .lightGray
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
        
        let firstNavVC = UINavigationController(rootViewController: firstVC)
        firstNavVC.tabBarItem = UITabBarItem(title: "Feed", image: .checkmark, selectedImage: .checkmark)
        firstNavVC.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        firstNavVC.navigationBar.barTintColor = UIColor.white
        firstNavVC.navigationBar.standardAppearance = appearance;
        firstNavVC.navigationBar.scrollEdgeAppearance = firstNavVC.navigationBar.standardAppearance
        
        let secondNavVC = UINavigationController(rootViewController: secondVC)
        secondNavVC.tabBarItem = UITabBarItem(title: "Profile", image: .actions, selectedImage: .actions)
        secondNavVC.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        secondNavVC.navigationBar.barTintColor = UIColor.white
        secondNavVC.navigationBar.standardAppearance = appearance;
        secondNavVC.navigationBar.scrollEdgeAppearance = secondNavVC.navigationBar.standardAppearance
        
        tabBarController.viewControllers = [firstNavVC, secondNavVC]
        tabBarController.tabBar.isHidden = false
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}
