//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20714
//
//
///
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// g_samShadow                       sampler      NA          NA    5        1
// g_txShadow                        texture  float4     2darray    5        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
// TEXCOORD                 2     zw        1     NONE   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xy          0   TARGET   float   xy  
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_sampler s5, mode_default
dcl_resource_texture2darray (float,float,float,float) t5
dcl_input_ps linear v1.xy
dcl_output o0.xy
dcl_temps 2
mov r0.xy, v1.xyxx
mov r0.z, l(0)
sample_aoffimmi_indexable(0,-1,0)(texture2darray)(float,float,float,float) r1.xy, r0.xyzx, t5.xyzw, s5
sample_aoffimmi_indexable(0,0,0)(texture2darray)(float,float,float,float) r1.zw, r0.xyzx, t5.zwxy, s5
sample_aoffimmi_indexable(0,1,0)(texture2darray)(float,float,float,float) r0.xy, r0.xyzx, t5.xyzw, s5
add r0.zw, r1.zzzw, r1.xxxy
add r0.xy, r0.xyxx, r0.zwzz
mul o0.xy, r0.xyxx, l(0.333333, 0.333333, 0.000000, 0.000000)
ret 
// Approximately 9 instruction slots used
