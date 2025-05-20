//
//  Item.swift
//  orderBook
//
//  Created by dbot on 20/5/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date

    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
