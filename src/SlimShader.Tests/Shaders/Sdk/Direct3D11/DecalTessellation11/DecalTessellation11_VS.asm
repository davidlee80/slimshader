//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20714
//
//
///
// Buffer Definitions: 
//
// cbuffer cbUpdate
// {
//
//   float4x4 g_mWorld;                 // Offset:    0 Size:    64
//   float4x4 g_mViewProjection;        // Offset:   64 Size:    64 [unused]
//   float4x4 g_mWorldViewProjection;   // Offset:  128 Size:    64 [unused]
//   float4 g_vTessellationFactor;      // Offset:  192 Size:    16 [unused]
//   float4 g_vDisplacementScaleBias;   // Offset:  208 Size:    16 [unused]
//   float4 g_vLightPosition;           // Offset:  224 Size:    16 [unused]
//   float4 g_vEyePosition;             // Offset:  240 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// cbUpdate                          cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
// NORMAL                   0   xyz         1     NONE   float   xyz 
// TEXCOORD                 0   xy          2     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
// TEXCOORD                 0   xy          1     NONE   float   xy  
// NORMAL                   0   xyz         2     NONE   float   xyz 
//
vs_4_0
dcl_constantbuffer cb1[3], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xyz
dcl_input v2.xy
dcl_output o0.xyz
dcl_output o1.xy
dcl_output o2.xyz
dcl_temps 1
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)
dp4 o0.x, r0.xyzw, cb1[0].xyzw
dp4 o0.y, r0.xyzw, cb1[1].xyzw
dp4 o0.z, r0.xyzw, cb1[2].xyzw
mov o1.xy, v2.xyxx
mov o2.xyz, v1.xyzx
ret 
// Approximately 8 instruction slots used
