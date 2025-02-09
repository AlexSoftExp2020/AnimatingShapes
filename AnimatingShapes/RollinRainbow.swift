//
//  RollinRainbow.swift
//  AnimatingShapes
//
//  Created by Oleksii on 08.02.2025.
//

import SwiftUI

struct RollinRainbowView: View {
    @State private var isAnimating = false
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: 10)
    @State private var colors: [Color] = [.pink, .mint, .orange, .teal, .yellow, .cyan, .purple, .blue]
    @State private var scaleFactor: CGFloat = 3
    
    let springAnimation = Animation.spring(response: 0.4, dampingFraction: 0.75, blendDuration: 0.9)
    
    let numCircles = 100
    
    var body: some View {
        VStack {
            Text("Tap on the dots to make them roll!")
                .padding(.vertical, 30)
            
            Spacer()
            LazyVGrid(columns: gridColumns) {
                ForEach(0..<numCircles, id: \.self) { index in
                    Circle()
                        .foregroundColor(colors[index % colors.count])
                        .scaleEffect(scaleFactor)
                    // MARK: TODO
                }
            }
        }
        .navigationTitle("Rollin' Rainbow")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RollinRainbowView()
}
