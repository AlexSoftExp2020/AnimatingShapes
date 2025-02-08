//
//  MatchedGeometryEffect.swift
//  AnimatingShapes
//
//  Created by Oleksii on 08.02.2025.
//

import SwiftUI

struct MatchedGeometryEffectView: View {
    @State var exchange = false
    
    private func circle() -> some View {
        Circle()
            .fill(.red)
            .frame(width: 44, height: 44)
    }
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    MatchedGeometryEffectView()
}
