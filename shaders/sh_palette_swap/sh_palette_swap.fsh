//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D palette_tex; //the palette texture
uniform float palette_index; //the y index of the current palette (+1 to go to next palette, starts at 0)
uniform float palette_texel_width; //needs the texture_get_texel_width from the palette texture; tells our shader how "wide" each palette strip is
uniform float palette_texel_height; //needs the texture_get_texel_height from the palette texture; tells our shader how "high" each palette strip is
uniform float palette_x_offset; //needs the texture_get_uvs[0] from the palette texture; tells our shader where the palette is located horizontally on the texture page
uniform float palette_y_offset; //needs the texture_get_uvs[1] from the palette texture; tells our shader where the palette is located vertically on the texture page
uniform int color_vect; //takes a value between 0 and 2 to tell our shader if we check r(0), g(1) or b(2) values before swapping colours. We could also use alpha with 3.
void main()
{
	
	vec4 sample = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 swapCol = texture2D( palette_tex, vec2(palette_x_offset + sample[color_vect]*256.0 * palette_texel_width, palette_y_offset + palette_index*palette_texel_height));
	gl_FragColor  = vec4(swapCol.rgb, sample.a);/*
	How it works :
		- sample is the base sprite we're drawing
		- we go through the palette sprite with the following coordinates :
			x = the x position on the texture page + the r/g/b value of the current "pixel" on the main sprite
			    -> we multiply it by 256 to "normalize" it (between 0 and 1) then * the width of a texel on the texture page
				-> this multiplication basically allows us to travel 1 pixel at a time horizontally
			y = the y position on the texture page + the row we want to go to * the height of a texel on the texture page 
				-> this multiplication basically allows us to travel 1 pixel at a time vertically
		- the final texture we display takes the colours from the palette swap and the alpha values of the original sprite
	*/
}