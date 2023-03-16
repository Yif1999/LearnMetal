//
//  Shaders.metal
//  01-hello_triangle
//
//  Created by 於怿丰 on 2023/3/16.
//

#include <metal_stdlib>
using namespace metal;

#include "ShaderTypes.h"

struct Fragment {
    float4 position [[position]];
    float4 color;
};

vertex Fragment vertexShader(const device Vertex *vertexArray [[buffer(0)]], unsigned int vid [[vertex_id]]) {
    Vertex input = vertexArray[vid];
    
    Fragment output;
    output.position = float4(input.position.x, input.position.y, 0, 1);
    output.color = input.color;
    
    return output;
}

fragment float4 fragmentShader(Fragment input [[stage_in]]) {
    return input.color;
}
