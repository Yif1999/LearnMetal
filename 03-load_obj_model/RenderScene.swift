//
//  RenderScene.swift
//  02-transformation
//
//  Created by 於怿丰 on 2023/3/18.
//

import Foundation

class RenderScene {
    
    var player: Camera
    var monkey: Component
    
    init() {
        player = Camera(
            position: [0, 0, 5],
            eulers: [0.0, 150.0, 0.0]
        )
        
        monkey = Component(
            position: [3.0, 0.0, 0.0],
            eulers: [0.0, 0.0, 0.0]
        )
    }
    
    func update() {
        
        player.updateVectors()
        
        monkey.eulers.z += 1
        if monkey.eulers.z > 360 {
            monkey.eulers.z -= 360
        }
        
    }
}
