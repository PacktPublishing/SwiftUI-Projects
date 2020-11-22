//
//  Data.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 11/21/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import Foundation


struct PlistData {
    static func load<T: Decodable>(_ filename: String) -> T {
        let data: Data

        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }

        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }

        do {
            let decoder = PropertyListDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}
