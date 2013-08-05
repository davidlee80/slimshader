//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20714
//
//
///
// Buffer Definitions: 
//
// cbuffer cbNeverChanges
// {
//
//   uint4 insidePointIndex[90];        // Offset:    0 Size:  1440
//   uint4 outsidePointIndex[90];       // Offset: 1440 Size:  1440
//
// }
//
// cbuffer cbCS
// {
//
//   uint4 g_param;                     // Offset:    0 Size:    16
//
// }
//
// Resource bind info for InputEdgeFactor
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
// Resource bind info for NumVerticesIndicesOut
// {
//
//   uint2 $Element;                    // Offset:    0 Size:     8
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// InputEdgeFactor                   texture  struct         r/o    0        1
// NumVerticesIndicesOut                 UAV  struct         r/w    0        1
// cbNeverChanges                    cbuffer      NA          NA    0        1
// cbCS                              cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_4_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[180], dynamicIndexed
dcl_constantbuffer cb1[1], immediateIndexed
dcl_resource_structured t0, 16 
dcl_uav_structured u0, 8
dcl_input vThreadID.x
dcl_temps 6
dcl_thread_group 128, 1, 1
ult r0.x, vThreadID.x, cb1[0].x
if_nz r0.x
  ld_structured r0.xyzw, vThreadID.x, l(0), t0.xyzw
  ge r1.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r0.xyzx
  or r1.x, r1.y, r1.x
  or r1.x, r1.z, r1.x
  if_z r1.x
    max r0.xyzw, r0.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
    min r0.xyzw, r0.xyzw, l(64.000000, 64.000000, 64.000000, 64.000000)
    and r1.xyzw, r0.xyzw, l(0x007fffff, 0x007fffff, 0x007fffff, 0x007fffff)
    and r2.xyzw, r0.xyzw, l(0x7f800000, 0x7f800000, 0x7f800000, 0x7f800000)
    iadd r2.xyzw, r2.xyzw, l(0x00800000, 0x00800000, 0x00800000, 0x00800000)
    movc r0.xyzw, r1.xyzw, r2.xyzw, r0.xyzw
    ftou r1.xyzw, r0.xyzw
    and r1.xyzw, r1.xyzw, l(1, 1, 1, 1)
    ine r1.w, r1.w, l(0)
    ieq r1.w, r1.w, l(0)
    movc r2.xyz, r1.xyzx, l(1,1,1,0), l(0,0,0,0)
    eq r3.xyzw, r0.wxyz, l(1.000000, 1.000000, 1.000000, 1.000000)
    or r1.x, r1.w, r3.x
    movc r2.w, r1.x, l(0), l(1)
    and r1.y, r3.z, r3.y
    and r1.y, r3.w, r1.y
    and r1.y, r3.x, r1.y
    if_z r1.y
      mul r3.xyzw, r0.xyzw, l(0.500000, 0.500000, 0.500000, 0.500000)
      ieq r4.xyzw, r2.xyzw, l(1, 1, 1, 1)
      eq r5.xyzw, r0.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
      or r5.xyzw, r4.xyzw, r5.xyzw
      and r5.xyzw, r5.xyzw, l(0x3f000000, 0x3f000000, 0x3f000000, 0x3f000000)
      mad r5.xyzw, r0.xyzw, l(0.500000, 0.500000, 0.500000, 0.500000), r5.xyzw
      mad r0.xyzw, r0.xyzw, l(0.500000, 0.500000, 0.500000, 0.500000), l(0.500000, 0.500000, 0.500000, 0.500000)
      round_pi r0.xyzw, r0.xyzw
      ftou r0.xyzw, r0.xyzw
      ishl r0.xyzw, r0.xyzw, l(1)
      round_pi r3.xyzw, r3.xyzw
      ftou r3.xyzw, r3.xyzw
      ishl r3.xyzw, r3.xyzw, l(1)
      iadd r3.xyzw, r3.xyzw, l(1, 1, 1, 1)
      movc r0.xyzw, r4.xyzw, r0.xyzw, r3.xyzw
      iadd r0.x, r0.y, r0.x
      iadd r0.x, r0.z, r0.x
      movc r0.y, r1.x, l(3), l(4)
      umax r0.y, r0.w, r0.y
      ushr r0.z, r0.y, l(1)
      iadd r0.xw, r0.xxxz, l(-3, 0, 0, -1)
      imul null, r1.z, r0.z, r0.w
      imad r0.z, r0.w, r0.z, -r0.w
      imul null, r0.z, r0.z, l(3)
      imad r0.w, l(3), r1.z, l(1)
      movc r0.z, r1.x, r0.w, r0.z
      iadd r3.x, r0.z, r0.x
    else 
      and r3.x, r1.y, l(3)
      mov r5.xyzw, l(0,0,0,0)
      mov r0.y, l(0)
    endif 
  else 
    mov r5.xyzw, l(0,0,0,0)
    mov r2.xyzw, l(0,0,0,0)
    mov r0.y, l(0)
    mov r3.x, l(0)
  endif 
  if_z r3.x
    mov r3.y, l(0)
  else 
    ieq r0.x, r3.x, l(3)
    if_nz r0.x
      mov r3.y, l(4)
    else 
      iadd r0.x, r0.y, l(1)
      ushr r0.x, r0.x, l(1)
      round_pi r1.xyzw, r5.wxyz
      ftoi r1.xyzw, r1.xyzw
      ieq r4.xyzw, r2.wxyz, l(1, 1, 1, 1)
      iadd r1.xyzw, r1.xyzw, r4.xyzw
      imul null, r1.xyzw, r1.xyzw, l(10, 10, 10, 10)
      ishl r0.z, cb0[r1.x + 9].y, l(3)
      ishl r0.w, cb0[r1.y + 99].y, l(3)
      iadd r0.w, r0.w, r0.z
      ine r4.yzw, r2.xxyz, r2.wwww
      or r4.yzw, r4.xxxx, r4.yyzw
      ieq r2.xyz, r2.xyzx, r2.wwww
      iadd r1.xy, r0.wwww, l(5, 4, 0, 0)
      movc r1.x, r2.x, r1.x, r1.y
      movc r0.w, r4.y, r1.x, r0.w
      ishl r1.x, cb0[r1.z + 99].y, l(3)
      iadd r1.x, r0.z, r1.x
      iadd r1.yz, r1.xxxx, l(0, 5, 4, 0)
      movc r1.y, r2.y, r1.y, r1.z
      movc r1.x, r4.z, r1.y, r1.x
      ishl r1.y, cb0[r1.w + 99].y, l(3)
      iadd r0.zw, r0.zzzw, r1.yyyx
      iadd r1.yz, r0.zzzz, l(0, 5, 4, 0)
      movc r1.y, r2.z, r1.y, r1.z
      movc r0.z, r4.w, r1.y, r0.z
      iadd r0.z, r0.z, r0.w
      iadd r0.xw, r0.xxxx, l(-1, 0, 0, -2)
      ishl r1.x, r0.w, l(3)
      ishl r0.y, r0.y, l(1)
      iadd r0.y, r0.y, l(1)
      imad r0.x, l(-2), r0.x, r0.y
      imad r0.x, r0.x, r0.w, r1.x
      imad r0.x, r0.x, l(3), r0.z
      iadd r0.y, r0.x, l(4)
      movc r3.y, r4.x, r0.y, r0.x
    endif 
  endif 
  store_structured u0.xy, vThreadID.x, l(0), r3.xyxx
endif 
ret 
// Approximately 111 instruction slots used
