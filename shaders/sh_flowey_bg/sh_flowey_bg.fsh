//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;
uniform float time;
uniform vec4 uvs;
uniform sampler2D distort_texture;
const float distort_str = .008;
float map(float value, float min1, float max1, float min2, float max2){
	float percentage = (value - min1) / (max1 - min1);
	return percentage * (max2 - min2) + min2;
}
void main()
{
	//vectors, previously uniforms
	vec2 scroll_speed = vec2(-.08,-.12);
	vec4 distort_speed = vec4(-.24, .45, .6, .0);
	vec2 distort_size = vec2(1120.,1095.);
	
	// "offset" UVs
	vec2 uv_size = vec2(uvs.z-uvs.x, uvs.w - uvs.y);
	vec2 funny = v_vTexcoord;
	
	//distort
	vec2 distort;
	distort.x = texture2D(distort_texture, fract(v_vPosition/distort_size.x + vec2(time * distort_speed.x, time * distort_speed.y))).x;
	distort.y = texture2D(distort_texture, fract(v_vPosition/distort_size.y + vec2(time * distort_speed.z, time * distort_speed.w))).y;
	funny += distort*distort_str;
	//scroll
	funny = mod((funny+time*scroll_speed), uv_size);		
	
	funny.x = map(funny.x, 0.,uv_size.x, uvs.x, uvs.z);
	funny.y = map(funny.y, 0.,uv_size.y, uvs.y, uvs.w);
	
	vec4 base_colour = v_vColour * texture2D( gm_BaseTexture, funny);
	
	//colourize
	vec4 new_tint = vec4(.298,.298,1.,1.);
	base_colour *= new_tint;
	
	//desaturate
	float grey = base_colour.r * .3 + base_colour.g * .59 + base_colour.b * .11;
	base_colour = vec4(grey, grey, grey, .7);
	
	gl_FragColor = base_colour;
}