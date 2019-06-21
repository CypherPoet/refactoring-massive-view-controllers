//
//  NavigationDelegate.swift
//  HackingWithSwift
//
//  Created by Brian Sipple on 6/17/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit
import WebKit

class NavigationDelegate: NSObject {
    private let allowedSites: [String]
    
    
    init(allowedSites: [String] = ["apple.com", "hackingwithswift.com"]) {
        self.allowedSites = allowedSites
        super.init()
    }
}
    

// MARK: - WKNavigationDelegate

extension NavigationDelegate: WKNavigationDelegate {
    
    func webView(
        _ webView: WKWebView,
        decidePolicyFor navigationAction: WKNavigationAction,
        decisionHandler: @escaping (WKNavigationActionPolicy) -> Void
    ) {
        let isSiteAllowed = isAllowed(navigationAction.request.url)
        
        return decisionHandler(isSiteAllowed ? .allow : .cancel)
    }
}


// MARK: - Private Helpers

extension NavigationDelegate {
    
    func isAllowed(_ url: URL?) -> Bool {
        guard let host = url?.host else {
            return false
        }
        
        return allowedSites.contains(where: host.contains)
    }
    
}
