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
//   float4x4 g_mViewProjection;        // Offset:  256 Size:    64 [unused]
//   float4x4 g_mInvView;               // Offset:  320 Size:    64 [unused]
//   float4 g_vScreenResolution;        // Offset:  384 Size:    16 [unused]
//   float4 g_vMeshColor;               // Offset:  400 Size:    16 [unused]
//   float4 g_vTessellationFactor;      // Offset:  416 Size:    16
//   float4 g_vDetailTessellationHeightScale;// Offset:  432 Size:    16 [unused]
//   float4 g_vGridSize;                // Offset:  448 Size:    16 [unused]
//   float4 g_vDebugColorMultiply;      // Offset:  464 Size:    16 [unused]
//   float4 g_vDebugColorAdd;           // Offset:  480 Size:    16 [unused]
//   float4 g_vFrustumPlaneEquation[4]; // Offset:  496 Size:    64 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// cbMain                            cbuffer      NA          NA    0        1
//
//
//
// Patch Constant signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TessFactor            0   x           0  TRIEDGE   float   x   
// SV_TessFactor            1   x           1  TRIEDGE   float   x   
// SV_TessFactor            2   x           2  TRIEDGE   float   x   
// SV_InsideTessFactor      0   x           3   TRIINT   float   x   
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
// WORLDPOS                 0   xyz         0     NONE   float   xyz 
// NORMAL                   0   xyz         1     NONE   float   xyz 
// TEXCOORD                 0   xy          2     NONE   float   xy  
// LIGHTVECTORTS            0   xyz         3     NONE   float   xyz 
//
// Tessellation Domain   # of control points
// -------------------- --------------------
// Triangle                                3
//
// Tessellation Output Primitive  Partitioning Type 
// ------------------------------ ------------------
// Clockwise Triangles            Odd Fractional    
//
hs_5_0
hs_decls 
dcl_input_control_point_count 3
dcl_output_control_point_count 3
dcl_tessellator_domain domain_tri
dcl_tessellator_partitioning partitioning_fractional_odd
dcl_tessellator_output_primitive output_triangle_cw
dcl_hs_max_tessfactor l(15.000000)
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[27], immediateIndexed
hs_fork_phase 
dcl_hs_fork_phase_instance_count 3
dcl_input vForkInstanceID
dcl_output_siv o0.x, finalTriUeq0EdgeTessFactor
dcl_output_siv o1.x, finalTriVeq0EdgeTessFactor
dcl_output_siv o2.x, finalTriWeq0EdgeTessFactor
dcl_temps 1
dcl_indexrange o0.x 3
min r0.x, cb0[26].x, l(15.000000)
mov r0.y, vForkInstanceID.x
mov o[r0.y + 0].x, r0.x
ret 
hs_fork_phase 
dcl_output_siv o3.x, finalTriInsideTessFactor
min o3.x, cb0[26].y, l(15.000000)
ret 
// Approximately 6 instruction slots used
