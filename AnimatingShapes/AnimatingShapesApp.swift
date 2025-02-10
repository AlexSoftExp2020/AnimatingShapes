//
//  AnimatingShapesApp.swift
//  AnimatingShapes
//
//  Created by Oleksii on 06.02.2025.
//

import SwiftUI

@main
struct AnimatingShapesApp: App {
    @State var selection: Topic? = nil
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                TopicList(contentSource: TopicData.homeContent)
            } detail: {
                Text("Please select a destination")
            }
        }
    }
}
