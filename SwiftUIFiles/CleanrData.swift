//
//  CleanrData.swift
//  Cleanr
//
//  Created by Zavier Hofstetter on 10/22/24.
//

import Foundation
import SwiftData

@Model//This tells Swift that I want to use the class as the data
class DataItem: Identifiable {
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
