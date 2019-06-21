//
//  Coordinator.swift
//  HackingWithSwift
//
//  Created by Brian Sipple on 6/21/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    var rootViewController: UIViewController { get }
    
    func start()
}
