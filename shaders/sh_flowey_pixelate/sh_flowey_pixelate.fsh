//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

const float pixelation_size = 280.;

/*
this simple shader rounds the pixel values and then scales back up a texture.
the reason we need it is bc we need UV coordinates after the rest of the shader stuff has been processed
sadly, we can't access uvs from what's drawn... unless we use surfaces!
*/

void main()
{
	//get the "aspect ratio" to make sure pixels are square
	vec2 actual_pixelation_size = vec2(pixelation_size, pixelation_size * (480./640.));
	vec2 new_uvs = floor((v_vTexcoord * actual_pixelation_size)+.5) / actual_pixelation_size;
    vec4 colour = v_vColour * texture2D( gm_BaseTexture, new_uvs );
	
	gl_FragColor = colour;
}
