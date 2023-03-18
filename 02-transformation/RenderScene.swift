//
//  RenderScene.swift
//  02-transformation
//
//  Created by 於怿丰 on 2023/3/18.
//

import Foundation

class RenderScene {
    
    var player: Camera
    var triangles: [Component]
    
    init() {
        player = Camera(
            position: [-1, 0, 0],
            eulers: [0.0, 90.0, 0.0]
        )
        
        triangles = [
            Component(
                position: [3.0, 0.0, 0.0],
                eulers: [0.0, 0.0, 0.0]
            )
        ]
    }
    
    func update() {
        
        player.updateVectors()
        
        for triangle in triangles {
            
            triangle.eulers.z += 1
            if triangle.eulers.z > 360 {
                triangle.eulers.z -= 360
            }
            
        }
        
    }
}
