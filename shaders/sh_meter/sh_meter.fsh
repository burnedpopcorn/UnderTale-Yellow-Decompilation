//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float nb_rect;
uniform float time;
vec3 hsv2rgb( vec3 c ) {//function from "the book of shaders" by Patricio Gonzalez Vivo and Jen Lowe
    vec3 rgb = clamp(abs(mod(c.x*6.0+vec3(0.0,4.0,2.0),6.0)-3.0)-1.0,0.0,1.0 );
    rgb = rgb*rgb*(3.0-2.0*rgb);
    return c.z * mix(vec3(1.0), rgb, c.y);
}
float map(float value, float low1, float high1, float low2, float high2){//remaps values from interval 1 to interval 2  
    return (value - low1) / (high1 - low1) * (high2 - low2) + low2;
}
void main()
{
	float filled_perc = nb_rect/5.0;
	filled_perc = map(filled_perc,1.0,0.0,0.0,0.6);
	
    gl_FragColor = vec4(hsv2rgb(vec3(filled_perc,0.75+cos(time*3.0)*.5+.5,1.0)),1.0);
	
}