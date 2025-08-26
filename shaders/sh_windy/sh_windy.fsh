//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;
uniform float time;
uniform sampler2D distort_texture;
uniform vec4 uvs;
uniform float str;
void main() { //Thanks to Gaming Reverends for the shader code
 
	vec2 wind;
	wind.x = texture2D(distort_texture,fract(v_vPosition/1366.0 + vec2(time, time/2.0))).x * str;
	wind.y = texture2D(distort_texture,fract(v_vPosition/768.0 + vec2(time, time/2.0))).y * str;
	
	gl_FragColor = v_vColour * texture2D(gm_BaseTexture, vec2(
	clamp(v_vTexcoord.x + wind.x,uvs.x,uvs.z),
	clamp(v_vTexcoord.y + wind.y,uvs.y,uvs.w)));
	
}