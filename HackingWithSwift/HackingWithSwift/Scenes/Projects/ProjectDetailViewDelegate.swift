//
//  ProjectDetailViewDelegate.swift
//  HackingWithSwift
//
//  Created by Brian Sipple on 6/17/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit

protocol ProjectDetailViewDelegate: class {
    func projectDetailView(_ view: UIView, didTapShowButton showButton: UIButton)
}
