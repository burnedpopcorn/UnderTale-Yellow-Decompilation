//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec2 Coord = v_vTexcoord + vec2(cos(v_vTexcoord.y*30.0)/30.0, 0);
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture, Coord);
}

