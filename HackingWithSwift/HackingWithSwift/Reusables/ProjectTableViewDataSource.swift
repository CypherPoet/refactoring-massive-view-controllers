//
//  ProjectTableViewDataSource.swift
//  HackingWithSwift
//
//  Created by Brian Sipple on 6/17/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit

class ProjectTableViewDataSource: NSObject {
    private var projects: [Project]
    private let cellReuseIdentifier: String
    

    override init() {
        self.projects = Bundle.main.decode(from: "projects.json")
        self.cellReuseIdentifier = "Cell"
    }
}


// MARK: - UITableViewDataSource

extension ProjectTableViewDataSource: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        let project = projects[indexPath.row]
        
        cell.textLabel?.attributedText = project.attributedTitle
        
        return cell
    }
}


// MARK: - Core Methods

extension ProjectTableViewDataSource {
    
    func project(at index: Int) -> Project {
        return projects[index]
    }
}
