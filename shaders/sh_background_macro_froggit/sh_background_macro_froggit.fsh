//
// Simple passthrough fragment shader
//
#define TAU 6.28318530718 
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition; 
uniform float time;
uniform vec4 uvs;
uniform vec2 txl_d;
void main()
{
    vec2 position = vec2(v_vPosition.x/640.0,v_vPosition.y/480.0);
    vec2 centeredTexcoords = position * 2.0 - 1.0;
    float radialDistance = length( centeredTexcoords );
    float funnyOffset = ( cos( position.x * TAU * 100.0 ) + cos( position.y * TAU * 50.0 ) )*.1;
    float wave = (cos(( radialDistance - time ) * TAU * 2.0) + funnyOffset)*.005;
	vec2 new_uvs = vec2(wave + v_vTexcoord);
	new_uvs.x = clamp(new_uvs.x, uvs.x, uvs.z);
	new_uvs.y = clamp(new_uvs.y, uvs.y, uvs.w);
    
    
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, new_uvs);
}