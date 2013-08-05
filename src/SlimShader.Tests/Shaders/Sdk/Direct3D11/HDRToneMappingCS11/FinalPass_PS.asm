//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20714
//
//
///
// Buffer Definitions: 
//
// cbuffer cbPS
// {
//
//   float4 g_param;                    // Offset:    0 Size:    16
//
// }
//
// Resource bind info for lum
// {
//
//   float $Element;                    // Offset:    0 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// PointSampler                      sampler      NA          NA    0        1
// LinearSampler                     sampler      NA          NA    1        1
// tex                               texture  float4          2d    0        1
// lum                               texture  struct         r/o    1        1
// bloom                             texture  float4          2d    2        1
// cbPS                              cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_structured t1, 4 
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, l(0), l(0), t1.xxxx
mad r0.x, r0.x, cb0[0].x, l(0.001000)
div r0.x, l(0.720000), r0.x
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v1.xyxx, t0.wxyz, s0
mul r0.xyz, r0.xxxx, r0.yzwy
mad r1.xyz, r0.xyzx, l(0.666667, 0.666667, 0.666667, 0.000000), l(1.000000, 1.000000, 1.000000, 0.000000)
mul r2.xyz, r0.xyzx, r1.xyzx
mad r0.xyz, r0.xyzx, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
div r0.xyz, r2.xyzx, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t2.xyzw, s1
mad o0.xyz, r1.xyzx, l(0.600000, 0.600000, 0.600000, 0.000000), r0.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 13 instruction slots used
