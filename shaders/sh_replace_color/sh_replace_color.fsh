varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 new_colour;
uniform float new_alpha;
void main()
{
	vec4 new_colour_replacement = texture2D( gm_BaseTexture, v_vTexcoord );
	if (new_colour_replacement.rgb != vec3(0.0,0.0,0.0))
	{
		new_colour_replacement.rgb = new_colour.rgb;	
	}
    //replaces all pixels with a single given colour but keeps the alpha values of the original sprite
    gl_FragColor = vec4(new_colour_replacement.rgb , new_colour_replacement.a * new_alpha);
}