//
//  ShaderTypes.h
//  LearnMetal
//
//  Created by 於怿丰 on 2023/3/18.
//

#ifndef ShaderTypes_h
#define ShaderTypes_h

#include <simd/simd.h>


struct Vertex {
    vector_float3 position;
    vector_float4 color;
};

struct CameraParameters {
    matrix_float4x4 view;
    matrix_float4x4 projection;
};

#endif /* definitions_h */
