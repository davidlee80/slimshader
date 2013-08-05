//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20714
//
//
///
// Buffer Definitions: 
//
// cbuffer cbMain
// {
//
//   float4x4 g_mWorld;                 // Offset:    0 Size:    64 [unused]
//   float4x4 g_mView;                  // Offset:   64 Size:    64 [unused]
//   float4x4 g_mProjection;            // Offset:  128 Size:    64 [unused]
//   float4x4 g_mWorldViewProjection;   // Offset:  192 Size:    64 [unused]
//   float4x4 g_mViewProjection;        // Offset:  256 Size:    64
//   float4x4 g_mInvView;               // Offset:  320 Size:    64 [unused]
//   float4 g_vScreenResolution;        // Offset:  384 Size:    16 [unused]
//   float4 g_vMeshColor;               // Offset:  400 Size:    16 [unused]
//   float4 g_vTessellationFactor;      // Offset:  416 Size:    16 [unused]
//   float4 g_vDetailTessellationHeightScale;// Offset:  432 Size:    16
//   float4 g_vGridSize;                // Offset:  448 Size:    16 [unused]
//   float4 g_vDebugColorMultiply;      // Offset:  464 Size:    16 [unused]
//   float4 g_vDebugColorAdd;           // Offset:  480 Size:    16 [unused]
//   float4 g_vFrustumPlaneEquation[4]; // Offset:  496 Size:    64 [unused]
//
// }
//
// cbuffer cbMaterial
// {
//
//   float4 g_materialAmbientColor;     // Offset:    0 Size:    16 [unused]
//   float4 g_materialDiffuseColor;     // Offset:   16 Size:    16 [unused]
//   float4 g_materialSpecularColor;    // Offset:   32 Size:    16 [unused]
//   float4 g_fSpecularExponent;        // Offset:   48 Size:    16 [unused]
//   float4 g_LightPosition;            // Offset:   64 Size:    16 [unused]
//   float4 g_LightDiffuse;             // Offset:   80 Size:    16 [unused]
//   float4 g_LightAmbient;             // Offset:   96 Size:    16 [unused]
//   float4 g_vEye;                     // Offset:  112 Size:    16
//   float4 g_fBaseTextureRepeat;       // Offset:  128 Size:    16 [unused]
//   float4 g_fPOMHeightMapScale;       // Offset:  144 Size:    16 [unused]
//   float4 g_fShadowSoftening;         // Offset:  160 Size:    16 [unused]
//   int g_nMinSamples;                 // Offset:  176 Size:     4 [unused]
//   int g_nMaxSamples;                 // Offset:  180 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// g_samLinear                       sampler      NA          NA    0        1
// g_nmhTexture                      texture  float4          2d    1        1
// cbMain                            cbuffer      NA          NA    0        1
// cbMaterial                        cbuffer      NA          NA    1        1
//
//
//
// Patch Constant signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TessFactor            0   x           0  TRIEDGE   float       
// SV_TessFactor            1   x           1  TRIEDGE   float       
// SV_TessFactor            2   x           2  TRIEDGE   float       
// SV_InsideTessFactor      0   x           3   TRIINT   float       
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// WORLDPOS                 0   xyz         0     NONE   float   xyz 
// NORMAL                   0   xyz         1     NONE   float   xyz 
// TEXCOORD                 0   xy          2     NONE   float   xy  
// LIGHTVECTORTS            0   xyz         3     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xy          0     NONE   float   xy  
// LIGHTVECTORTS            0   xyz         1     NONE   float   xyz 
// SV_POSITION              0   xyzw        2      POS   float   xyzw
//
// Tessellation Domain   # of control points
// -------------------- --------------------
// Triangle                                3
//
ds_5_0
dcl_input_control_point_count 3
dcl_tessellator_domain domain_tri
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[28], immediateIndexed
dcl_constantbuffer cb1[8], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t1
dcl_input vDomain.xyz
dcl_input vicp[3][0].xyz
dcl_input vicp[3][1].xyz
dcl_input vicp[3][2].xy
dcl_input vicp[3][3].xyz
dcl_output o0.xy
dcl_output o1.xyz
dcl_output_siv o2.xyzw, position
dcl_temps 3
mul r0.xy, vDomain.yyyy, vicp[1][2].xyxx
mad r0.xy, vDomain.xxxx, vicp[0][2].xyxx, r0.xyxx
mad r0.xy, vDomain.zzzz, vicp[2][2].xyxx, r0.xyxx
mov o0.xy, r0.xyxx
mul r1.xyz, vDomain.yyyy, vicp[1][3].xyzx
mad r1.xyz, vDomain.xxxx, vicp[0][3].xyzx, r1.xyzx
mad o1.xyz, vDomain.zzzz, vicp[2][3].xyzx, r1.xyzx
mul r1.xyz, vDomain.yyyy, vicp[1][0].xyzx
mad r1.xyz, vDomain.xxxx, vicp[0][0].xyzx, r1.xyzx
mad r1.xyz, vDomain.zzzz, vicp[2][0].xyzx, r1.xyzx
add r2.xyz, r1.xyzx, -cb1[7].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
sqrt r0.z, r0.z
add r0.z, r0.z, l(-100.000000)
mul r0.z, r0.z, l(0.010000)
max r0.z, r0.z, l(0.000000)
min r0.z, r0.z, l(3.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t1.wxyz, s0, r0.z
add r0.x, r0.x, l(-1.000000)
mul r0.x, r0.x, cb0[27].x
mul r0.yzw, vDomain.yyyy, vicp[1][1].xxyz
mad r0.yzw, vDomain.xxxx, vicp[0][1].xxyz, r0.yyzw
mad r0.yzw, vDomain.zzzz, vicp[2][1].xxyz, r0.yyzw
dp3 r1.w, r0.yzwy, r0.yzwy
rsq r1.w, r1.w
mul r0.yzw, r0.yyzw, r1.wwww
mad r0.xyz, r0.yzwy, r0.xxxx, r1.xyzx
mov r0.w, l(1.000000)
dp4 o2.x, r0.xyzw, cb0[16].xyzw
dp4 o2.y, r0.xyzw, cb0[17].xyzw
dp4 o2.z, r0.xyzw, cb0[18].xyzw
dp4 o2.w, r0.xyzw, cb0[19].xyzw
ret 
// Approximately 33 instruction slots used
