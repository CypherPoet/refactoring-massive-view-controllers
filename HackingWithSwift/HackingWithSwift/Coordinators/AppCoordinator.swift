//
//  AppCoordinator.swift
//  HackingWithSwift
//
//  Created by Brian Sipple on 6/21/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit

final class AppCoordinator: NavigationCoordinator {
    var navController: UINavigationController
    var window: UIWindow

    private var projectsCoordinator: ProjectsCoordinator?
    
    
    init(navController: UINavigationController, window: UIWindow) {
        self.navController = navController
        self.window = window
        self.projectsCoordinator = ProjectsCoordinator(navController: navController)
    }
    
    
    func start() {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        
        showProjects()
    }
}

// MARK: - Navigation

private extension AppCoordinator {
    
    func showProjects() {
//        let projectListVC = ProjectListViewController.instantiateFromStoryboard()
        
//        navController.setViewControllers([projectListVC], animated: true)
        projectsCoordinator?.start()
    }
}
