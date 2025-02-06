//
//  DancingDots.swift
//  AnimatingShapes
//
//  Created by Oleksii on 06.02.2025.
//

import SwiftUI

class SmallDot: Identifiable, ObservableObject {
    let id = UUID()
    
    @Published var offset: CGSize = .zero
    @Published var color: Color = .primary
}

struct DancingDots: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DancingDots()
}
