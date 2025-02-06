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

class BigDot: Identifiable, ObservableObject {
    let id = UUID()
    
    @Published var offset: CGSize = .zero
    @Published var color: Color = .primary
    @Published var scale: Double = 1.0
    @Published var smallDots = [SmallDot]()
    
    init() {
        for _ in 0..<5 {
            smallDots.append(SmallDot())
        }
    }
    
    func randomizePositions() {
        objectWillChange.send()
        for dot in smallDots {
            dot.offset = CGSize(width: Double.random(in: -120...120), height: Double.random(in: -120...120))
            dot.color = DotTracker.randomColor
        }
    }
    
    func resetPositions() {
        objectWillChange.send()
        for dot in smallDots {
            dot.offset = .zero
            dot.color = .primary
        }
    }
}

struct DancingDots: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DancingDots()
}
