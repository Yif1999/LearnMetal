//
//  TriangleMesh.swift
//  02-transformation
//
//  Created by 於怿丰 on 2023/3/18.
//

import Foundation
import MetalKit

class TriangleMesh{
    
    let vertexBuffer: MTLBuffer
    
    init(metalDevice: MTLDevice) {
        
        let vertices: [Vertex] = [
            Vertex(position: [-1, 0, -1], color: [1, 0, 0, 1]),
            Vertex(position: [1, 0, -1], color: [0, 1, 0, 1]),
            Vertex(position: [0, 0, 1], color: [0, 0, 1, 1])
        ]
        vertexBuffer = metalDevice.makeBuffer(bytes: vertices, length: vertices.count * MemoryLayout<Vertex>.stride, options: [])!
    }
}
