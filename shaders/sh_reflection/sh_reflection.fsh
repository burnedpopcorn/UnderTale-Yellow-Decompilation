//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;
uniform vec4 spriteUVs;
uniform float Alpha;
void main()
{
    //Calculate the current pixel coordinate on the processed texture
    float spriteHeight = spriteUVs.w - spriteUVs.y;
    float spriteWidth = spriteUVs.z - spriteUVs.x;
    vec2 v_vTexcoordLocal = vec2((v_vTexcoord.x - spriteUVs.x) / spriteWidth, (v_vTexcoord.y - spriteUVs.y) / spriteHeight);
       
    vec4 baseColor = texture2D(gm_BaseTexture,v_vTexcoord);
    baseColor.rg *= 0.75;
	baseColor.b *= 1.1;
    float newAlpha = baseColor.a * Alpha * smoothstep(0.0, 1.0, v_vTexcoordLocal.y - 0.15);
    gl_FragColor = vec4(baseColor.rgb, newAlpha);
}