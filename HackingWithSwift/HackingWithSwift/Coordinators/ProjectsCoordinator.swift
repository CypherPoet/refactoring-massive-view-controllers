//
//  ProjectsCoordinator.swift
//  HackingWithSwift
//
//  Created by Brian Sipple on 6/21/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit

// TODO: Separate file
protocol ProjectListViewControllerDelegate: class {
    func viewController(_ controller: UIViewController, didSelectDetailsFor project: Project)
}

protocol ProjectDetailViewControllerDelegate: class {
    func viewController(_ controller: UIViewController, didSelectReadingFor project: Project)
}


final class ProjectsCoordinator: NavigationCoordinator {
    var navController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navController = navController
    }
    
    
    func start() {
        let projectListVC = ProjectListViewController.instantiateFromStoryboard()
        
        projectListVC.delegate = self
        navController.setViewControllers([projectListVC], animated: true)
    }
}


extension ProjectsCoordinator: ProjectListViewControllerDelegate {

    func viewController(_ controller: UIViewController, didSelectDetailsFor project: Project) {
        let detailVC = ProjectDetailViewController.instantiateFromStoryboard()
        
        detailVC.project = project
        detailVC.delegate = self
        navController.pushViewController(detailVC, animated: true)
    }
}


extension ProjectsCoordinator: ProjectDetailViewControllerDelegate {
    
    func viewController(_ controller: UIViewController, didSelectReadingFor project: Project) {
        let readProjectVC = ReadProjectViewController.instantiateFromStoryboard()
        
        readProjectVC.project = project
        navController.pushViewController(readProjectVC, animated: true)
    }
}


