//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float freq;
uniform float time;
uniform float amp;
float test = v_vTexcoord.x;
void main()
{
	test = v_vTexcoord.x + sin(v_vTexcoord.y * freq + time) * amp;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, vec2(test, v_vTexcoord.y) );
}