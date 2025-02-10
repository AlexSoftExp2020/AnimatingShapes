//
//  Topic.swift
//  AnimatingShapes
//
//  Created by Oleksii on 10.02.2025.
//

import SwiftUI

struct Topic: Identifiable, Hashable {
    var id: UUID = UUID()
    var title: String
    var description: String
    var systemSymbol: String
    var destination: Destination
}


