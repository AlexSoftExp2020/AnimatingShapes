//
//  ComposingShapesView.swift
//  AnimatingShapes
//
//  Created by Oleksii on 06.02.2025.
//

import SwiftUI

struct ComposingShapesView: View {
    
    private let arcCount = 6
    private let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple]
     
     var body: some View {
         VStack {
             ZStack {
                 ForEach(0..<arcCount, id: \.self) { arc in
                     Circle()
                     
                 }
             }
             VStack {
                 
             }
         }
     }
 }

#Preview {
    ComposingShapesView()
}
