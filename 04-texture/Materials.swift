//
//  Materials.swift
//  04-texture
//
//  Created by 於怿丰 on 2023/3/18.
//

import MetalKit

class Material {
    
    let texture: MTLTexture
    let sampler: MTLSamplerState
    
    init(device: MTLDevice, allocator: MTKTextureLoader, filename: String) {
        guard let materialURL = Bundle.main.url(forResource: filename, withExtension: "png") else {
            fatalError ( )
        }
        
        //Configure texture properties.
        let options: [MTKTextureLoader.Option: Any] = [
            .SRGB: false,
            .generateMipmaps: true
        ]

        
        do {
            texture = try allocator.newTexture (URL: materialURL, options: options)
        } catch {
            fatalError("couldn't load mesh")
        }
        
        let samplerDescriptor = MTLSamplerDescriptor()
        samplerDescriptor.sAddressMode = .repeat
        samplerDescriptor.tAddressMode = .repeat
        samplerDescriptor.magFilter = .linear
        samplerDescriptor.minFilter = .nearest
        samplerDescriptor.mipFilter = .linear
        samplerDescriptor.maxAnisotropy = 8
        
        sampler = device.makeSamplerState(descriptor: samplerDescriptor)!
    }
}
