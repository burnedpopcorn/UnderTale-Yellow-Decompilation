varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float color_alpha;
void main()
{
    float color_alpha_actual;
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord );
    vec3 lum = vec3(0.21,0.71,0.8);
    if (Color.a > 0.0) 
    {
        color_alpha_actual = color_alpha;
    }
    else 
    {
        color_alpha_actual = Color.a;
    }
    gl_FragColor = vec4(vec3(dot(Color.rgb, lum)), color_alpha_actual);
}