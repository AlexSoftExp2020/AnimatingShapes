//
//  ShapeButtonStyle.swift
//  AnimatingShapes
//
//  Created by Oleksii on 07.02.2025.
//

import SwiftUI

struct ShapeButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding()
            .frame(minWidth: 125, minHeight: 60)
            .background(Color.blue.opacity(0.15))
            .foregroundColor(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.bottom, 30)
    }
}

struct ShapeButtonStyle: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
