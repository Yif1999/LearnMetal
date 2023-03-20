//
//  LearnMetalApp.swift
//  02-transformation
//
//  Created by 於怿丰 on 2023/3/18.
//

import SwiftUI

@main
struct ProjectApp: App {
    
    @StateObject private var renderScene = RenderScene()
    
    var body: some Scene {
        
        //create a view of the underlying scene data
        WindowGroup {
            appView().environmentObject(renderScene)
        }
    }
}
