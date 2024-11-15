//
// SDF fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 texcol = texture2D( gm_BaseTexture, v_vTexcoord );
	
	float spread = fwidth(texcol.a);	
	spread = max(spread * 0.75, 0.001);	
	texcol.a = smoothstep(0.5 - spread, 0.5 + spread, texcol.a);			
	
	vec4 combinedcol = v_vColour * texcol;
	DoAlphaTest(combinedcol);	
			
    gl_FragColor = combinedcol;
}
