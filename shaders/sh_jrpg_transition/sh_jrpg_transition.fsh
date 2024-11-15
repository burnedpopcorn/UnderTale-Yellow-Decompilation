//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float size;

float rand(float x){
    return fract(sin(x)*10000.0);
}

float noise(float x){
    float i = floor(x*20.0);
    float f = fract(x*20.0);
    //return i;
	return mix(rand(i), rand(i + 1.0), smoothstep(0.,1.,f));    
}


void main(){// heavily based on a shader by @patriciogv - 2015 - http://patriciogonzalezvivo.com
    vec2 st = gl_FragCoord.xy/vec2(1920.,750.);

    vec2 pos = vec2(.5,0.45)-st;

    float r = length(pos)*2.984;
    float a = atan(pos.y,pos.x);
	float f = noise(a)*size;
    f =  1.0-smoothstep(f,f+0.5,r) ;

    gl_FragColor = vec4(vec3(0.), f);
}
