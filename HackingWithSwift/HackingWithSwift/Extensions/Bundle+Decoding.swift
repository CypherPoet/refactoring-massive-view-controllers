//
//  Bundle+Decoding.swift
//  HackingWithSwift
//
//  Created by Brian Sipple on 6/17/19.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import Foundation

extension Bundle {
    
    func decode<T: Decodable>(from fileName: String) -> T {
        guard let url = self.url(forResource: fileName, withExtension: nil) else {
            fatalError("Failed to locate \(fileName) in app bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(fileName) in app bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let result = try? decoder.decode(T.self, from: data) else {
             fatalError("Failed to decode \(fileName) from app bundle.")
        }
        
        return result
    }
}
