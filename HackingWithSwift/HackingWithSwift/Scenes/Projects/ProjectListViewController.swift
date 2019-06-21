//
//  ProjectListViewController.swift
//  HackingWithSwift
//
//  Created by Paul Hudson on 08/11/2018.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit

class ProjectListViewController: UITableViewController, Storyboarded {
    var dataSource: ProjectTableViewDataSource!

    weak var delegate: ProjectListViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Hacking with Swift"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setupTableView()
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let project = dataSource.project(at: indexPath.row)
        
        delegate?.viewController(self, didSelectDetailsFor: project)
    }
}


// MARK: - Private helpers

private extension ProjectListViewController {
    
    func setupTableView() {
        let dataSource = ProjectTableViewDataSource()
        
        self.dataSource = dataSource
        tableView.dataSource = dataSource
    }
}

