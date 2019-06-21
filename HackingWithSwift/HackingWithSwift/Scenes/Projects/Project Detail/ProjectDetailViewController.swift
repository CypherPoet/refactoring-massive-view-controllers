//
//  ProjectDetailViewController.swift
//  HackingWithSwift
//
//  Created by Paul Hudson on 08/11/2018.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import UIKit

class ProjectDetailViewController: UIViewController, Storyboarded {
    var project: Project!

    weak var delegate: ProjectDetailViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        assert(project != nil, "You must set a project before show this view controller.")

        navigationItem.largeTitleDisplayMode = .never
        title = "Project \(project.number)"
        
        view = ProjectDetailView(project: project, delegate: self)
    }
}


// MARK: - ProjectDetailViewDelegate

extension ProjectDetailViewController: ProjectDetailViewDelegate {
    
    func projectDetailView(_ view: UIView, didTapShowButton showButton: UIButton) {
        delegate?.viewController(self, didSelectReadingFor: project)
    }
}
