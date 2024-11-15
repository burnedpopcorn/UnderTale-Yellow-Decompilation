//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform vec4 spriteUVs;
uniform float Time;
uniform float Alpha;
void main()
{
    //Calculate the cuarrent pixel coordinate on the processed texture
    float spriteHeight = spriteUVs.w - spriteUVs.y;
    float spriteWidth = spriteUVs.z - spriteUVs.x;
    vec2 v_vTexcoordLocal = vec2((v_vTexcoord.x - spriteUVs.x) / spriteWidth, (v_vTexcoord.y - spriteUVs.y) / spriteHeight);
    
    //Calculate the offset for the wave effect
    vec2 newCoord = v_vTexcoord;// + vec2((cos(v_vTexcoordLocal.y*20.0+(Time*3.14))/20.0) * (1.0 - v_vTexcoordLocal.y),0.0);

    //Make sure neighboring sprites dont get displayed
    //float alphaMult = step(spriteUVs.x,newCoord.x) - step(spriteUVs.x+spriteWidth,newCoord.x);
    
    vec4 baseColor = texture2D(gm_BaseTexture,newCoord);
    baseColor.rgb *= 0.75;;
    float newAlpha = baseColor.a * Alpha * smoothstep(0.0, 1.0, v_vTexcoordLocal.y - 0.15);

    gl_FragColor = vec4(baseColor.rgb,newAlpha/*alphaMult*/);
}
