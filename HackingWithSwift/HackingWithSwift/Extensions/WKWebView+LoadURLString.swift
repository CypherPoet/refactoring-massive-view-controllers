//
//  WKWebView+LoadURLString.swift
//  HackingWithSwift
//
//  Created by Brian Sipple on 6/17/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import Foundation
import WebKit

extension WKWebView {
    
    func load(_ urlString: String) {
        guard let url = URL(string: urlString) else {
            preconditionFailure("Unable to make url from string \"\(urlString)\"")
        }
        
        load(URLRequest(url: url))
    }
    
}
