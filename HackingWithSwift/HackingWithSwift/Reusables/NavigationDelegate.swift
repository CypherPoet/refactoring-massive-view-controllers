//
//  NavigationDelegate.swift
//  HackingWithSwift
//
//  Created by Brian Sipple on 6/17/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import UIKit
import WebKit

class NavigationDelegate: NSObject, WKNavigationDelegate {
    private let allowedSites: [String]
    
    
    init(
        allowedSites: [String] = ["apple.com", "hackingwithswift.com"]
    ) {
        self.allowedSites = allowedSites
        super.init()
    }
    
    
    func webView(
        _ webView: WKWebView,
        decidePolicyFor navigationAction: WKNavigationAction,
        decisionHandler: @escaping (WKNavigationActionPolicy) -> Void
    ) {
        guard let host = navigationAction.request.url?.host else {
            return decisionHandler(.cancel)
        }
        
        if allowedSites.contains(where: host.contains) {
            decisionHandler(.allow)
        } else {
            print("Disallowed invalid site: \(host).")
            decisionHandler(.cancel)
        }
    }
}
