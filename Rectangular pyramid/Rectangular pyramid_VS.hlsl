// Cube_VS.hlsl
#include "Rectangular pyramid.hlsli"

VertexOut VS(VertexIn vIn)
{
    VertexOut vOut;
    vOut.posH = mul(float4(vIn.posL, 1.0f), World); // mul ���Ǿ���˷�, �����*Ҫ���������Ϊ
    vOut.posH = mul(vOut.posH, View); // ��������ȵ��������󣬽��Ϊ
    vOut.posH = mul(vOut.posH, Proj); // Cij = Aij * Bij
    vOut.color = vIn.color; // ����alphaͨ����ֵĬ��Ϊ1.0
    return vOut;
}