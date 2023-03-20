//
//  RenderScene.swift
//  02-transformation
//
//  Created by 於怿丰 on 2023/3/18.
//

import Foundation

class RenderScene {
    
    var player: Camera
    var cube: Component
    
    init() {
        player = Camera(
            position: [0, 0, 5],
            eulers: [0.0, 150.0, 0.0]
        )
        
        cube = Component(
            position: [3.0, 0.0, 0.0],
            eulers: [0.0, 0.0, 0.0]
        )
    }
    
    func update() {
        
        player.updateVectors()
        
        cube.eulers.z += 1
        if cube.eulers.z > 360 {
            cube.eulers.z -= 360
        }
        
    }
}
