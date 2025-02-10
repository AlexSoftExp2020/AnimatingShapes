//
//  TopicList.swift
//  AnimatingShapes
//
//  Created by Oleksii on 10.02.2025.
//

import SwiftUI

struct TopicList: View {
    
    var contentSource: [Topic]
    
    var body: some View {
        Section {
            List {
                ForEach(contentSource) { row in
                    //MARK: TODO NavigationLink(destination: Destination.view, label: <#T##() -> View#>)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Animating Shapes")
            
        }
        .safeAreaInset(edge: .top, spacing: 0) {
            Color.clear.frame(height: 15)
        }
    }
}

#Preview {
    //MARK: TODO TopicList()
}
