//
//  HackingWithSwiftTests.swift
//  HackingWithSwiftTests
//
//  Created by Paul Hudson on 08/11/2018.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import XCTest
@testable import HackingWithSwift

class HackingWithSwiftTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testNavigationDelegateAllowsGoodSite() {
        let allowedSites = ["apple.com"]
        let navigationDelegate = NavigationDelegate(allowedSites: allowedSites)
        let url = URL(string: "https://www.apple.com")
        
        XCTAssertTrue(navigationDelegate.isAllowed(url))
    }
    
    func testNavigationDelegateDisallowsBadSite() {
        let allowedSites = ["apple.com"]
        let navigationDelegate = NavigationDelegate(allowedSites: allowedSites)
        let url = URL(string: "https://www.facebook.com")
        
        XCTAssertFalse(navigationDelegate.isAllowed(url))
    }

}
