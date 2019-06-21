//
//  Storyboarded.swift
//  HackingWithSwift
//
//  Created by Brian Sipple on 6/21/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static var storyboardName: String { get }
    static var storyboardID: String { get }
    
    static func instantiateFromStoryboard() -> Self
}


extension Storyboarded where Self: UIViewController {
    
    static var storyboardName: String { "Main" }

    // Returns the class name of the controller 
    static var storyboardID: String { String(describing: self) }
    
    
    static func instantiateFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: Self.storyboardName, bundle: .main)
        
        return storyboard.instantiateViewController(withIdentifier: Self.storyboardID) as! Self
    }
}
