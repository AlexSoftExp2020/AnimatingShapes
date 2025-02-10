//
//  SpinningView.swift
//  AnimatingShapes
//
//  Created by Oleksii on 10.02.2025.
//

import SwiftUI

struct ResetEllipse: View {
    var body: some View {
        Ellipse()
            .frame(width: 200, height: 200)
            .foregroundColor(.orange)
    }
}

struct SpinningEllipse: View {
    @State private var width: CGFloat = 200
    
    var body: some View {
        Ellipse()
            .frame(width: width, height: 200)
            .foregroundColor(.orange)
            .onAppear {
                withAnimation(.easeInOut.repeatForever(autoreverses: true).speed(2)) {
                    width = 0
                }
            }
    }
}

struct SpinningView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SpinningView()
}
