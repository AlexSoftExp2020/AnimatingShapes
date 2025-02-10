//
//  TopicOrganizer.swift
//  AnimatingShapes
//
//  Created by Oleksii on 10.02.2025.
//

import SwiftUI

enum Destination: String, CaseIterable {
    case basicShapes
    case simpleAnimation
    case spinningAnimation
    case explodingAnimation
    case rollingRainbow
    case dragnDropDots
    case dancingDots
    
    @ViewBuilder
    static func view(forSelection selection: Destination) -> some View {
        switch selection {
        case .basicShapes:
            BasicShapesView()
        case .simpleAnimation:
            HeartPulseView()
        case .spinningAnimation:
           SpinningView()
        case .explodingAnimation:
           ExplodingView()
        case .rollingRainbow:
            RollinRainbowView()
        case .dragnDropDots:
            DragNDropDotsView()
        case .dancingDots:
            DancingDotsView()
        }
    }
}


struct TopicOrganizer: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TopicOrganizer()
}
