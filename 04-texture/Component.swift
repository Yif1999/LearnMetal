//
//  Component.swift
//  02-transformation
//
//  Created by 於怿丰 on 2023/3/18.
//

import Foundation

import Foundation

class Component {
    
    var position: simd_float3
    var eulers: simd_float3
    
    init(position: simd_float3, eulers: simd_float3) {
        
        self.position = position
        self.eulers = eulers
        
    }
}
