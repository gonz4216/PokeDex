//
//  SceneDelegate.swift
//  Pokemon App
//
//  Created by Ethan Gonsalves on 2022-11-03.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    
    

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        
        
        guard let windowScene = (scene as? UIWindowScene) else { return }

    //This code is starting off the project without storyboards
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        window?.rootViewController = createTabbar()  //setting the root view controller to the tabbar contianer
    }
    
    func createTabbar() -> UITabBarController {
        // creating tabbar Controller to wrap both Navigation controllers
        let tabbar = UITabBarController()
        UITabBar.appearance().tintColor = .white
        UITabBar.appearance().barTintColor = UIColor.systemPink
        tabbar.viewControllers = [createSearchNavigationController(), createFavNavigationController()] //Putting both the nav controllers in this array
        
        return tabbar
    }
    
    func createSearchNavigationController() -> UINavigationController {
        //making both nav controllers
        let searchVC = SearchVC()  //Setting the screen/VC to the viewcrontroller
        
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0) //Giving it the search icon and setting tag 0 because its the first nav controller
        return UINavigationController(rootViewController: searchVC) //returning a navcontrer
    }
    
    
    
    func createFavNavigationController() -> UINavigationController {
        //making both nav controllers
        let favVC = FavoritesListVC() // once agian var  so you can set a screen/VC to this nav controller
        
        favVC.title = "Favorites"
        favVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1) // number 1 becuase it is the second NC
        return UINavigationController(rootViewController: favVC)
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

