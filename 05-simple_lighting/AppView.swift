//
//  AppView.swift
//  02-transformation
//
//  Created by 於怿丰 on 2023/3/18.
//

import SwiftUI

/*
 render scene will be automatically forwarded here...
 */
struct appView: View {
    
    @EnvironmentObject var renderScene: RenderScene
    
    var body: some View {
        ContentView()
            .frame(width: 800, height: 600)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        renderScene.spinPlayer(offset: gesture.translation)
                    }
            )
    }
}

/*
 ...but must be manually forwarded if a preview is requested
 */
struct appView_Previews: PreviewProvider {
    static var previews: some View {
        appView().environmentObject(RenderScene())
    }
}
